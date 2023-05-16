syms l1 l2 m1 m2 g M 
A = [0 1 0 0 0 0; 0 0 -m1*g/M 0 -m2*g/M 0; 0 0 0 1 0 0; 0 0 -((M*g)+(m1*g))/(M*l1) 0 -g*m2/(M*l1) 0; 0 0 0 0 0 1; 0 0 -m1*g/(M*l2) 0 -((M*g)+(m2*g))/(M*l2) 0];
B = [0; 1/M; 0; 1/(l1*M); 0; 1/(l2*M)];
C1 = [1 0 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 0 0];
C2 = [0 0 0 0 0 0; 0 0 1 0 0 0; 0 0 0 0 1 0];
C3 = [1 0 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 1 0];
C4 = [1 0 0 0 0 0; 0 0 1 0 0 0; 0 0 0 0 1 0];
Observer1 = rank([C1' A'*C1' ((A')^2)*C1' ((A')^3)*C1' ((A')^4)*C1' ((A')^5)*C1'])
Observer2 = rank([C2' A'*C2' ((A')^2)*C2' ((A')^3)*C2' ((A')^4)*C2' ((A')^5)*C2'])
Observer3 = rank([C3' A'*C3' ((A')^2)*C3' ((A')^3)*C3' ((A')^4)*C3' ((A')^5)*C3'])
Observer4 = rank([C4' A'*C4' ((A')^2)*C4' ((A')^3)*C4' ((A')^4)*C4' ((A')^5)*C4'])