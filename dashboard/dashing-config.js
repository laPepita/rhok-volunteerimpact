var myDashboard = new Dashboard();
myDashboard.addWidget('customWidget', 'Number', {
    getData: function () {
        var self = this;
        Dashing.utils.get('custom_widget', function(data) {
            $.extend(self.scope, data);
        });
    },
    interval: 3000
});
