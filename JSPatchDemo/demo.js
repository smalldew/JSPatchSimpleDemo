// demo.js
require('UIView, UIColor, UILabel')

defineClass('ViewController', {
   
            setInitView: function() {
            
            self.ORIGsetInitView();   //保留原先的代码;

            
            var JSView = UIView.alloc().initWithFrame({x: 0, y: 300, width: 400, height: 200});
            JSView.setBackgroundColor(UIColor.yellowColor());
            
            var labelOne = UILabel.alloc().initWithFrame({x: 0, y: 0, width: 280, height: 20});
            labelOne.setText("这是一个JSPatch的橘色label.");
            labelOne.setBackgroundColor(UIColor.orangeColor());
            JSView.addSubview(labelOne);
            
            var labelTwo = UILabel.alloc().initWithFrame({x: 0, y: 50, width: 300, height: 100})
            labelTwo.setText("这又是个JSPatch的绿色背景label.");
            labelTwo.setTextColor(UIColor.redColor());
            labelTwo.setBackgroundColor(UIColor.greenColor())
            labelTwo.setTextAlignment(0);
            JSView.addSubview(labelTwo);
        
            self.view().addSubview(JSView);
            }
            
});