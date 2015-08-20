export default Ember.Object.extend({
  open: function(auth) {
    console.log("open")
    console.log(auth)
    if (!auth.code) {
      return rejectPromise();
    }

    localStorage.token = auth.code;

    var pieces = auth.code.split("-");
    console.log(pieces);
    var bufferString = pieces[0] + ":" + auth.code;
    var authorizationHeader = btoa(bufferString);
    localStorage.authorizationHeader = "Basic " + authorizationHeader;
    //adapter.set('headers', { 'Authorization': "Basic " + authorizationHeader });

    console.log(localStorage)
    //var adapter = this.container.lookup('adapter:application');
    //adapter.set('headers', { 'Authorization': "Basic " + authorizationHeader });

    //adapter.set('headers', { 'Authorization': localStorage.token });
    //console.log(adapter)

    return this.get('store').find('me', 'refresh').then(function(me) {
      me.get('twitterUsername')
      return {
        currentUser: me
      };
    });
  },

  fetch: function() {
    console.log("fetch")
    if (!localStorage.token) {
      return rejectPromise();
    }

    return this.get('store').find('me', 'refresh').then(function(me) {
      console.log(me.get('twitterUsername'))
      return {
        currentUser: me
      };
    });
  },

  close: function() {
    console.log("close")
    var authToken = localStorage.token;

    localStorage.token = null;
    
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