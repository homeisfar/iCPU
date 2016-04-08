# iCPU
The perfect counterpart to Souvik's iTemperature. Shows you total CPU use as a % in the status menubar in OS X.

This is the first thing I've ever done in Xcode, and I had a hard time figuring out how to use it. I should probably start this from scratch.

One thing to note, after profiling iTemperature and iCPU, it seems that updating the system status bar (the top menu bar) actually consumes a lot more CPU time than one would have thought, even though this program sleeps for four seconds at a time. It's probably not a well-known fact, but it seems that Apple intends for the elements of the bar to be relatively static due to how much overhead there is in updating and drawing the status bar.
