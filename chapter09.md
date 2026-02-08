# Chapter 9

# Questions for Self-Study

## CHAPTER 2

2.1 Redesign the stack package of Figure 2.3, using a single interface procedure as suggested by the Pascal approach of Figure 2.5(b). Rewrite the body of the package (Figure 2.4) in Ada. Comment on the differences between the new package and the old one from the point of view of understandability, modularity and functionality.

2.2 Write a Pascal program for a stack package following Figure 2.5(b). Enumerate the significant differences between the Pascal program and the corresponding Ada program. Consider both the appearance of the program text and the run-time behavior of the program. What is the significance of the package concept at run-time in Ada, relative to the corresponding Pascal program?

2.3 Design and program in Ada a new version of the buffer task of Figures 2.7 and 2.8 for use as a line buffer. The new task will have entries to WRITE characters and to READ lines. As before, the WRITE entry will be closed when the task’s buffers are full. The READ entry will be closed when a complete line is not yet available. Assume that lines are variable length strings of fixed maximum size, terminated by a special character.

2.4 Suppose that a programmer needing a passive buffer package for use by a single task decides, as a matter of convenience, to use an available buffer task instead. Strictly speaking, this is not the correct use of a buffer task. In correct use, the READ and WRITE entries are called by different tasks. In the programmer’s intended use, these entries would be called by the same task. Which versions of the buffer tasks of Figures 2.7 and 2.8 and of Question 2.3 could be used successfully in this way? Which could not? Explain.

2.5 Design and program in Ada a passive buffer package for use in the application of Question 2.4. Following Question 2.3, this buffer package will have procedures to WRITE characters and to READ lines. However, the line-available condition will have to be handled differently.

2.6 For the buffer task example of Figure 2.7, implemented as in Figure 2.8(d), give the minimum/maximum number of context switches required to transfer a character from producer to the consumer, assuming that the three tasks are the only ones in the system. Explain.

2.7 Rewrite the stack package example of Figure 2.4, defining the PUSH and POP procedures as stubs, following Figure 2.12. (The approach of Figure 2.12 can be applied not only to nested packages but also to procedures of a package.)

2.8 Investigate different ways of handling interrupts in different multi-tasking systems and contrast them in detail with the Ada approach illustrated by Figure 2.15.

2.9 (a) Write the specification and body of an Ada task to implement the functional equivalent of a general counting semaphore. Semaphores are used for signalling between tasks in such a way that signals are never lost. A general counting semaphore has two indivisible primitives called WAIT and SIGNAL, an internal counter to keep track of the excess of signals over waits, and a FIFO wait-queue where tasks may wait for signals. A task calling WAIT is blocked in the wait-queue if there have been more past calls on WAIT than on SIGNAL; otherwise, it is allowed to proceed. The task at the top of the wait-queue is allowed to proceed when the next SIGNAL occurs.
(b) The intent of SIGNAL is that its callers always be allowed to proceed without blocking (except possibly for the case where, in a prioritized, uniprocessor system, the task at the head of the wait-queue is of higher priority than the signalling task). WAIT should be similarly non-blocking if there have been sufficient past SIGNAL calls. Explain how this intent is violated by your Ada program; describe two ways in which this violation could affect the temporal behavior of the tasks calling the semaphore.

## CHAPTER 3

3.1 Draw structure graphs for the buffer task examples of Chapter 2 using the full graphical notation of Figures 3.2 and 3.3.

3.2 For the buffer task examples of Chapter 2, give specific instances of structural delays, congestion delays and latency delays.

3.3 Figures 3.10 and 3.11 illustrate the human interaction metaphor for the Ada rendezvous mechanism. However, they do not illustrate all the cases possible according to the graphical notation of Figures 3.2 and 3.3. Draw and explain new figures corresponding to 3.10 and 3.11 for conditional and timed entry calls and timed-out entry accepts.

3.4 With reference to Section 3.3.1, draw structure graphs depicting all possible forms of master/slave interaction and comment on the differences between them. Are there cases where a slave task could be replaced by a passive package? Explain.

3.5 With reference to the definitions of functional task types in Section 3.3.1, identify instances of these types in Figure 3.6(b). Is the secretary task in Figure 3.6(b) actually a secretary according to the definition of Section 3.3.1? What functional types are not present in Figure 3.6(b)? Can you see a role for them in completing the figure?

3.6 Consider Figure 3.14(c) showing an active stack package containing a nested scheduler task. Draw a complete structure diagram for a system of tasks using this package and then explain the fundamental differences at run-time between the nature of the tasks in this figure and the nature of the package. In what sense would it be fair to say that the package “disappears” at run-time, leaving only the tasks? In this sense, what role does the package play at run-time? In what sense is there no difference at run-time between the nested scheduler approach of Figure 3.14(c) and the separate scheduler approach of Figure 3.14(e)?

3.7 Consider Figure 3.17, showing indirect many-to-many interactions using a buffer task. Is there any significant efficiency difference between using a single buffer task as shown in the (d) part of the figure or using many buffer tasks (one per target) as shown in the (b) part of the figure?

3.8 Consider Figure 3.19, showing a priority server task. Explain how it is theoretically possible for entries to be accepted in other than priority order. What conditions in the underlying run-time system would make this possible?

3.9 Suppose one task calls the high priority entry of the server task of Figure 3.19, using a timed call, but many tasks call the medium and low priority entries. Provide a timing diagram showing the interleaved sequence of events among the calling tasks and the server task such that the server task would be unable to service callers of its medium and low priority entries even though the entry queue of the high priority entry is empty.

3.10 Draw timing diagrams showing the interleaved activities of the various tasks in the transport task structure of Figure 3.21(e) and the buffer task structure of Figure 3.21(h). Comment on the differences.

3.11 Suppose four tasks send items mutually to each other in all possible ways. Draw structure graphs showing the interaction structures for the transport task approach of Figure 3.21(e) and the buffer task approach of Figure 3.21(h). Compare the two approaches. Would your comparison of the two approaches be significantly different if the four tasks did not communicate with each other in all possible ways, but only in a pairwise fashion, in which each task communicates with only two other tasks?

3.12 Suppose that a system is being designed, composed of a number of tasks which must interact with each other to accomplish the work. Give examples showing that ad hoc combinations of different interaction structures from Figure 3.21 can lead to deadlock.

3.13 Write pseudocode showing how the SENDER task of Figure 3.22(b) would use the credit mechanism of the TARGET task.

3.14 Write pseudocode showing how the SENDER and TARGET tasks of Figure 3.22(c) would interact to accomplish the exchange of items and credit.

3.15 Give a structure graph and pseudocode for the bank example of Figures 3.23–3.25 to illustrate how tellers might acquire their wicket numbers from the dispatcher dynamically.

3.16 Given a pair of tasks, each with one entry, which make mutual calls, give pseudocode for the bodies of the tasks illustrating the two cases where they are guaranteed to deadlock and where they are guaranteed never to deadlock.

3.17 Suppose a particular task contains two entries. Explain clearly the different implications for callers of the following different acceptance mechanisms (use timing diagrams if appropriate):
* ordered acceptance of the entries;
* selective acceptance of entries;
* acceptance of one entry within the critical section of the other entry.

3.18 Write pseudocode for the different cases of Question 3.17.

## CHAPTER 4

4.1 Figure 4.10 shows a CONTROL task interacting with a number of SLAVE tasks by two mechanisms, accepting calls from the SLAVES and making calls to the SLAVES. Under what circumstances could the SLAVE tasks be replaced by procedures, with resulting improvement in system efficiency? Under what circumstances is keeping the SLAVES as tasks more efficient?

4.2 Write appropriate pseudocode for the LIFE and KEYBOARD tasks of the LIFE system example. Include a type-ahead buffer in the KEYBOARD task.

4.3 Define appropriate array aggregates for the finite state machines of the LIFE system command decoder (Figure 4.17). Suggest a more efficient way of representing the finite state machines.

4.4 Develop new structure graphs for the LIFE example for the case where the design is based on a character stream command decoder instead of a word stream command decoder. Contrast this design with the one in Chapter 4.

4.5 Write pseudocode for the body of the FORMS system logical display management package and the nested field edit package.

4.6 Explain what modifications are required to the FORMS design to accommodate the dotted states and transitions in the command processor finite state machine of Figure 4.24.

4.7 Draw a timing diagram showing the interleaved sequence of events leading to the line printer task of the FORMS system being unable to print available lines until the operator hits a keystroke (see Figure 4.25(a) and the associated text).

4.8 Redesign the FORMS system using the buffer task approach of Figure 3.21(h) instead of the transport task approach used in Figure 4.25. Start with the idea that each main task in the system will have its own buffer task through which it will receive all its interactions from other tasks in the system. In the FORMS system, the two main tasks are the event decoder and the line printer. Contrast your design with the one presented in Chapter 4.

4.9 Write pseudocode for the command recognizer and command processor packages which are nested in the event decoder task of Figure 4.25.

4.10 Modify the FORMS system design so that concurrent printing and editing is achieved by double buffering. Two form buffers would be provided: one for data entry and editing and the other for background printing of a previously entered form. A print command would have to be added to the operator interface. Draw a structure graph corresponding to Figure 4.25(a) to show the new approach.

4.11 Draw a complete structure graph for the FORMS system as developed in Chapter 4, showing all components of the system on one figure. Include stored data as well as packages and tasks in your structure graph.

4.12 Draw a structure graph indicating how a file system interface might be added to the FORMS system.

4.13 Consider an expanded version of the FORMS system viewed as a number of subsystems, a console manager subsystem, a printer manager subsystem and a file manager subsystem. For modularity, it would be desirable to make each subsystem an active package. Draw a structure graph, showing what components would be so packaged, either (a) for the approach taken in Chapter 4, or (b) for the buffer task approach developed in Question 4.8. Explain how this structure could be used as a general one for embedded operating systems for personal workstations.

4.14 Consider the DIALOGUE system structure graph of Figure 4.32. Draw another structure graph based on this one showing how an inappropriate internal structure for the active message system interface package could result in deadlock. (Hint—what if the SEND_MESSAGE procedure of the package caused the caller to wait for room for the message?)

4.15 Would it be advantageous to redesign the DIALOGUE system as shown in Figure 4.32 based on the buffer task model of task interaction instead of the transport task model? Explain.

4.16 In the alternate structure graph of Figure 4.33 for the DIALOGUE system, there is no means for the event decoder task to control the flow of incoming messages. Devise a flow control mechanism based on the discussions in Chapter 3.

4.17 Develop the internal logic of the event decoder task of Figure 4.33, including an internal structure graph and pseudocode.

4.18 Draw a structure graph to implement the data flow graph of Figure 4.34.

## CHAPTER 5

5.1 When a dispatcher allocates members of a pool of server tasks to user tasks, as in the BANK example of Figure 5.1, the possibility arises of races between tasks. The solutions shown in Figure 5.1 are free from such races, but only a slight modification would be needed to introduce the possibility of races. Suppose the dispatcher task provides two entries for tellers, one READY entry as shown in Figure 5.1(a), where tellers may declare themselves ready, and another WAIT_FOR_WORK entry, where tellers may wait until work is assigned. The WAIT_FOR_WORK entry would be guarded. Now the possibility exists of a race between tellers to call the WAIT_FOR_WORK entry after returning from the call to the READY entry. Draw a structure graph showing the dispatcher/teller interaction and explain the race, using a timing diagram.

5.2 Write pseudocode for the REQUEST__SERVICE procedure of the BANK package of Figure 5.1(a).

5.3 Design the body of the MAILROOM package of Figure 5.7.

5.4 Design the body of the MAILROOM package of Figure 5.8.

5.5 Consider the flow control mechanism suggested by the structure graphs of Figure 5.11. Write pseudocode for the body of the target tasks to implement the linear interaction structure of Figure 5.11(b), and the nonlinear structure of Figure 5.11(d). Contrast the two approaches. Comment on why the approach of Figure 5.11(d) does not provide a generalized block/wakeup mechanism.

5.6 Write pseudocode to implement the linear interaction structure for the final readers/writers solution of Figure 5.16, following the approach suggested in the discussion of that figure in the text.

5.7 Explain how the linear waiting solution for the agent pool example as shown in Figure 5.17(b) can result in a race which will give the customer an invalid agent number. Use a timing diagram. What slight modification of the logic of the problem (as depicted in Figure 5.17(a)) would render this race of no importance?

5.8 Suppose the race problem in Figure 5.17(b) was solved by providing a check entry in the dispatcher for use by an agent to check if it has been allocated. The agent would use this entry only if a customer called while the agent was in the unallocated state. What new problem does this solution introduce? Would a solution to this problem be to provide a list of allocated agent numbers global to the dispatcher task but local to the pool package, which could be consulted by agents? What additional new problem does this introduce?

5.9 Consider the problem of designing the body of the communications package for the reliability unit model of Figure 5.23. Suppose the package can be divided into two parts internally, one part of which supports export and import of “please call” messages for task entries and the other of which supports any kind of message communication between reliability units. Assume a suitable interface view of the inter-reliability unit messaging component of the package. Then design the entry call export/import part. This part of the package must arrange to make calls on entries of tasks in the same reliability unit; this could be done, for example, by using a pool of “partner” tasks to make the requested calls. Alternatively, conditional calls could be made by a call manager task. In either case, your design should take account of the possibility that entries may be closed by guards.

5.10 Study the treatment of generics in the Ada reference manual and comment on the desirability of including generics in the parts kit of Ada mechanisms available for design at the level of the examples in Chapters 2 through 5.

## CHAPTER 6

6.1 The interface structure between the DIALOGUE and COMM systems shown in Figure 6.9 is based on the transport task canonical form for layered systems suggested by Figure 6.3(d). In this canonical form, the tasks of each layer are packaged. However, the tasks of the DIALOGUE system in Figure 6.9 are not packaged. Show how the complete DIALOGUE system could be packaged to fit the canonical structure.

6.2 Show how the DIALOGUE/COMM interface structure of Figure 6.9 could be redesigned to accommodate the buffer task canonical structure of Figure 6.4(c).

6.3 Redesign the logical frame management package of Figure 6.12 based on the buffer task canonical structure for layered systems of Figure 6.4(c).

6.4 Write pseudocode for the body of the F__PROTOCOL package of Figure 6.14, using tables for the finite state machines, following the approach taken for the LIFE system command decoder in Chapter 4.

6.5 Prepare pseudocode for the internal logic of the FS task, based on the ideas in Figures 6.13, 6.14 and 6.15.

6.6 Show how the physical frame mangement package of Figure 6.16 could be modified for use with a layered structure based on the buffer task canonical form.

6.7 Write pseudocode for the interrupt task of the physical frame management package of Figure 6.16.

6.8 In the COMM subsystem, suppose the body of the F package of Figure 6.12 must be modified, without changing the syntax or semantics of its specifications, so that it serves as an I/O package for a DMA (Direct Memory Access) device which manages all of the details of the frame protocol. Assume that the DMA device is a separate hardware device which copies outgoing data frames from frame buffers in the body of the F package into its own internal buffers, for subsequent transmission. Similarly, it copies incoming frames from its own internal buffers into frame buffers in the body of the F package. Completion of copying of buffers from or to the DMA device is signalled by separate interrupts. Assume that the DMA device performs all the frame protocol functions so that the only concern of the F package is to manage the transfer of frames to and from the DMA device and to and from the M package. In this sense, its responsibilities are similar to those of the old P package (which is no longer needed). Draw well-annotated data flow and structure graphs for the body of the new F package and explain its operation.

6.9 Figure 6.17 shows a checker task approach to reporting failures at the frame level to tasks at higher levels. Draw structure graphs showing specifically how this checker task could interface to the higher levels of the COMM and DIALOGUE systems.

6.10 Use the data flow graph of Figure 6.19 as the basis for redesigning the structure graphs for the COMM subsystem based on the buffer task canonical model for layered system interactions depicted in Figure 6.4(c).

## CHAPTER 7

7.1 Races may occur in many ways between tasks. The X.25 packet layer package of Figure 7.5 presents us with a possible example. The possibility exists in this package of a race between a task attempting to CONNECT a call (after being assigned a VC# by the DISPATCHER) and the ROUTER__IN task attempting to PUT an incoming-call packet. Explain this race and its consequences, using a timing diagram. What recovery mechanism is implicit in Figure 7.5?

7.2 Give a simplified structure graph for the X.25 packet layer package of Figure 7.5 for the special case where the package supports only a single virtual circuit. Remove all features of Figure 7.5 which are not required for this case. Justify your simplifications.

7.3 Redraw the relevant parts of the structure graph for the X.25 packet layer package of Figure 7.5 to accommodate the following different approach to incoming call reception. When an incoming call packet arrives, the caller’s address is extracted from this packet and passed on to the user at WAIT__FOR__CALL, who must confirm that the call is desired before a call accept packet will be sent. This is in contrast to the approach taken in Figure 7.5, where the VCM task sends the call accept packet immediately and forces the user to clear undesired calls. Consider the possibility of changes to the package interface, to the task responsibilities and to the task interactions to accommodate this different approach.

7.4 What changes should be made to the X.25 packet layer package of Figure 7.5 if VCM tasks do not manage fixed virtual circuits, but rather are assigned virtual circuit numbers dynamically? With this new approach, a particular VCM task may manage different virtual circuits at different times. Recall that incoming call packets, call request packets, and call accept packets all specify a virtual circuit number. In the approach of Figure 7.5, the virtual circuit number in an incoming-call packet identifies the appropriate VCM task uniquely. Therefore ROUTER__IN can use the number to direct the packet to the appropriate VCM task. With the dynamic allocation approach, this is no longer possible because, at the time of arrival of such a packet, ROUTER__IN does not know which VCM task will manage the virtual circuit. In general, a free VCM task must be given a new virtual circuit number every time an incoming-call packet arrives or a call is requested locally. This is in contrast to the approach of Figure 7.5 where a free VCM task gives its virtual circuit number to the dispatcher. (Hint—the agent pool example of Chapter 5 may provide clues on how to manage dynamic virtual circuit numbers).

7.5 What design changes would be required in Figure 7.5 for the multiple virtual circuit case if the buffer task is eliminated?

7.6 Design an appropriate message interface package, along the lines of the M package of Chapter 6, to provide a message sending and receiving interface above the X.25 package for use by higher system layers. Take into account the fact that, as designed, the packet layer package of Figure 7.5 does not provide a mechanism to wait for transmission credit. Recall that the design of Chapter 6 relied on such a mechanism.

7.7 Extend the structure graph of Figure 7.5 to include a waiting for credit mechanism similar to that included in the various packages of Chapter 6.

7.8 Provide pseudocode for the body of the dispatcher task of Figure 7.5.

7.9 Draw a structure graph showing how the message interface package of Question 7.6 might use the event reporting mechanism of Figure 7.7.

7.10 Draw a structure graph showing a different organization for the body of the X.25 package of Figure 7.5, in which there is only one main task to manage all the virtual circuits.

7.11 Draw a different structure graph for the body of the X.25 packet of Figure 7.5, in which a pair of main tasks is used, one to manage call control for all virtual circuits and the other to manage data transfer for all virtual circuits.

7.12 Write pseudocode for the body of the dispatcher task of Figure 7.5 for the case where the VCM tasks are dynamically created as needed (as suggested in Section 7.4.3).

7.13 Develop an alternative structure for the X.25 packet layer package, using the buffer task canonical interaction structure of Figure 6.4(c) as the starting point. Assume one VCM task per virtual circuit as before. A clean approach is to provide one buffer task shared among all the virtual circuit tasks and to provide a family of entries where the virtual circuit tasks can wait by virtual circuit number. Is the dispatcher still required, or can its function be incorporated in the buffer task? Contrast your design to that of Figure 7.5. With this approach, is it still useful to provide separate package procedures for each of the functions of the package? Or should the package interface be redesigned to provide only two procedures, one for transmission and one for reception, as suggested by Figure 6.4(c)?
