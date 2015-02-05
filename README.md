
## Debugging

- [BUGS happen](grace-hopper-bug-moth-660x548.jpg)
- Whenever a program/system is not behaving the way we expect, we call it a bug.
- Debugging is the process of figuring out the source of the error and fixing it.
- I think of it as the disconnect between my assumptions and what the code is actually doing.
- It's a skill, so you'll need to practice it.  This is another great reason to help your peers.

#### Debugging Reasoning
- Read the error messages!
- Know what your expected behavior is.
- Understand the program state.
- Make incremental changes.
- Check your assumptions.

#### Debugging Tools

- Reading error messages
  - message itself
  - line number
  - stack trace

- `p` and `puts`
  - Quick way to examine program execution and state -- we can know whether or not we reached a line, or we can print the values of variables at our chosen execution points.
  - `puts` prints the value of `something.to_s`
  - `p` is `puts something.inspect`
  ```ruby
  class SpecialInteger
     def initialize(i)
        @i = i
     end
     def to_s
        @i.to_s
     end
  end

  special = SpecialInteger.new 42
  puts special   => 42
  p special      => #<SpecialInteger:0xb7ecc8b0 @i=42>
  ```

#### Debuggers

Debugger terminology
  - *Breakpoint*: The line of code where to pause execution
  - *Step*: Executes the next line(s) or steps into the method if there is a method call.  That's a new stack frame.
  - *Step over*: Skip over executing the next line(s).  If the next line is a method call, will not step into that execution but stay in the same frame.
  - *Finish*: Execute until the current stack frame returns, then pause.
  - *Continue*: Continue execution until the program finishes or the next breakpoint is reached.
  - *Watchpoint*: Pause at the line where the value of a variable is changed.
  - *REPL*: Read-Execute-Print loop.  An interactive enviroment, like irb, that allows you to execute statements within the context of the breakpoint.

- [Pry-Byebug gem](https://github.com/deivid-rodriguez/pry-byebug)
  - `gem install pry-byebug`
  - `require "pry-byebug"`
  - `binding.pry`

- Walking away from the computer
  - If you haven't solved the problem and you don't see a way to gain more information about the problem, then walk away from the computer.  Change your body positioning and environment.  Brainstorm on a piece of a paper.  Return with fresh eyes.
