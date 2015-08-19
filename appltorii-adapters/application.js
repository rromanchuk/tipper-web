export default Ember.Object.extend({
  open: function(auth) {
    console.log("open")
    console.log(auth)
    if (!auth.code) {
      return rejectPromise();
    }

    localStorage.token = auth.code;

    console.log(localStorage)
    var adapter = this.container.lookup('adapter:application');
    adapter.set('headers', { 'Authorization': localStorage.token });
    console.log(adapter)

    return this.get('store').find('user', 'me').then(function(user) {
      return {
        currentUser: user
      };
    });
  },

  fetch: function() {
    console.log("fetch")
    if (!localStorage.token) {
      return rejectPromise();
    }

    var adapter = this.container.lookup('adapter:application');
    adapter.set('headers', { 'Authorization': localStorage.token });

    return this.get('store').find('user', 'me').then(function(user) {
      return {
        currentUser: user
      };
    });
  },

  close: function() {
    console.log("close")
    var authToken = localStorage.token;

    localStorage.token = null;
    var adapter = this.container.lookup('adapter:application');
    adapter.set('headers', { 'Authorization': authToken });

    return new Ember.RSVP.Promise(function(resolve, reject) {
      Ember.$.ajax({
        url: '/logout',
        headers: {
          'Authorization': authToken
        },
        type: 'POST',
        success: Ember.run.bind(null, resolve),
        error: Ember.run.bind(null, reject)
      });
    });
  }

});