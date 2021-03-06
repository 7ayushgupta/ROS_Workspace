 function rleg = rpos(r0,t0)
        %right leg --------------------------------------------
        rt11 = ([0 -1 0 0;-1 0 0 -5;0 0 -1 0;0 0 0 1])*Rz(r0(1));
        rt1 = ([0 -1 0 0;0 0 -1 0;1 0 0 0;0 0 0 1])*Rz(r0(2));
        rt2 = ([1 0 0 2;0 0 1 0;0 -1 0 0;0 0 0 1])*Rz(r0(3));
        rt3 = ([1 0 0 20;0 1 0 0;0 0 1 0;0 0 0 1])*Rz(r0(4));
        rt4 = ([1 0 0 20;0 1 0 0;0 0 1 0;0 0 0 1])*Rz(r0(5));
        rt5 = ([1 0 0 2;0 0 -1 0;0 1 0 0;0 0 0 1])*Rz(r0(6));
        rt6 = ([0 1 0 0;0 0 1 0;1 0 0 4;0 0 0 1])*Rz(r0(7));
        
        %right leg ---------------------------------------------
        rleg(:,1) = t0*rt11*([0;0;0;1]);
        rleg(:,2) = t0*rt11*rt1*([2;0;0;1]);
        rleg(:,3) = t0*rt11*rt1*rt2*([20;0;0;1]);
        rleg(:,4) = t0*rt11*rt1*rt2*rt3*([20;0;0;1]);
        rleg(:,5) = t0*rt11*rt1*rt2*rt3*rt4*([2;0;0;1]);
        rleg(:,7) = t0*rt11*rt1*rt2*rt3*rt4*rt5*([0;0;4;1]);
        rleg(:,8) = t0*rt11*rt1*rt2*rt3*rt4*rt5*rt6*([2;0;0;1]);
        rleg(:,6) = t0*rt11*rt1*rt2*rt3*rt4*rt5*([0;0;-4;1]);
        
        
        %right foot-------------------------------------------------
        rfoot(:,1) = t0*rt11*rt1*rt2*rt3*rt4*rt5*rt6*([0;0;-3;1]);
        rfoot(:,2) = t0*rt11*rt1*rt2*rt3*rt4*rt5*([0;-3;-4;1]);
        rfoot(:,3) = t0*rt11*rt1*rt2*rt3*rt4*rt5*([0;3;-4;1]);
        rfoot(:,4) = t0*rt11*rt1*rt2*rt3*rt4*rt5*rt6*([0;0;3;1]);
        rfoot(:,5) = t0*rt11*rt1*rt2*rt3*rt4*rt5*rt6*([2;0;3;1]);
        rfoot(:,6) = t0*rt11*rt1*rt2*rt3*rt4*rt5*rt6*([2;0;-3;1]);
        rfoot(:,7) = t0*rt11*rt1*rt2*rt3*rt4*rt5*rt6*([0;0;-3;1]);
        rfoot(:,8) = t0*rt11*rt1*rt2*rt3*rt4*rt5*rt6*([0;0;3;1]);

 end
