class ClosedSystem

   Environment e;
   Process process1(ID = 1);
   Monitor m;
   Process process2(ID = 2);
   Scheduler s;

equation
   process1.otherProcessState = process2.myState;
   process1.turn = s.turn;
   process1.myState = s.state1;

   process2.otherProcessState = process1.myState;
   process2.turn = s.turn;
   process2.myState = s.state2;

   m.state1 = process1.myState;
   m.state2 = process2.myState;

end ClosedSystem;
