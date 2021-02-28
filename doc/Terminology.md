AP  
Application processor. A processor that is not the BSP. All APs are in a halted state when the BIOS first gives control to the operating system.

BSP  
bootstrap processor. The processor which is given control after the BIOS finishes its POST.

IRQ  
[Interrupt Requestes](https://en.wikipedia.org/wiki/Interrupt_request_(PC_architecture))

PIC  
[Programmable Interrupt Controller](https://en.wikipedia.org/wiki/Programmable_interrupt_controller) is a manager in an interrupt-driven system. It accepts interrupt requests from the peripheral devices, determines which of the incoming requests is of the highest importance (priority), ascertains whether the incoming request has a higher priority value than the level currently being serviced, and issues an interrupt to the CPU based on this determination.

APIC  
Advanced Programmable Interrupt Controller. Either a local APIC or an I/O APIC. It is attached to the APIC bus.

APIC bus  
A special non-architechural bus on which the APICs in the system send messages.

Local APIC
an APIC built in to the processor. It is responsible for dispatching interrupts sent over the APIC bus to its processor core and sending interrupts to other processors over the APIC bus.

I/O APIC  
A special APIC for receiving and distributing interrupts from external devices which is backward compatible with the PIC. There is generally only one per computer.

ACPI
Advanced Configuration and Power Interface. ACPI allows the operating system to control the amount of power each device is given (allowing it to put certain devices on standby or power-off for example). It is also used to control and/or check thermal zones (temperature sensors, fan speeds, etc), battery levels, PCI IRQ routing, CPUs, NUMA domains and many other things.

IPI  
interprocessor interrupt. A special interrupt sent to a processor by the originating processor programming its APIC with a target or logical target ID, and an interrupt vector.

MP  
Intel's MultiProcessor Specification, a standard which defines how SMP hardware should be presented to the operating system and how the operating system should interact with this hardware.

serialisation  
The act of executing a certain instruction which causes the processor to pause to retire all instructions currently being executed before proceeding to the next instruction in the stream. For example, before switching to protected mode, the processor must retire all instructions that began executing in real mode before beginning any in protected mode.

SMP  
symmetric multiprocessing. Using multiple processors which share the same physical memory in the same computer at the time.

8259 PIC  
https://wiki.osdev.org/8259_PIC

ICW  
Initialization Command Word used on the 8259A chip.

IVT  
Interrupt Vector Table.

IR  
Interrupt Routines. For example, the instruction 'INT 2' will execute the IR at index 2 in the IVT. Cool?

IDT  
Interrupt Descriptor Table.

GDT  
Global Descriptor Table.