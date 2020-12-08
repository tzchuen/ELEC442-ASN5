function T = DH_homog(theta, d, a, alpha)
    %define i, k, basis vectors
    i=[1; 0; 0];
    k=[0; 0; 1];
    
    I_3=eye(3); %creates a 3x3 identity matrix
    Z_3=zeros(1,3); %creates a R3 zero vector
    
    angle       = [cos(theta) -sin(theta) 0 0; sin(theta) cos(theta) 0 0; 0 0 1 0; 0 0 0 1];
    offset      = [I_3 d*k;Z_3 1];
    length      = [I_3 a*i;Z_3 1];
    twist       = [1 0 0 0; 0 cos(alpha) -sin(alpha) 0; 0 sin(alpha) cos(alpha) 0; 0 0 0 1];
    
    T = angle*offset*length*twist;
end