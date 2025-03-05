
# commands

  

commands is a Skiddie-friendly Crystal Shard to make it easier to execute commands.

  

## Installation

  

1. Add the dependency to your `shard.yml`:

  

```yaml

dependencies: 

	commands:

		github: Pr0ngleDev/commands

```

  

2. Run `shards install`

  

## Usage

  

```crystal
require "commands"
```

  <br>
  
  
execCommand can be used to execute a bash command and receive its output <br>

```crystal
.execCommand("Hello World") # Returns Hello World
```
<br>
  
<br>

execProscess can be used to execute a bash command and recieve its error code <br>
``` crystal
.execProcess("echo Hello World") # Returns 0
```
<br>
<br>
 

## Examples

<br>

   ``` crystal
    foo = .executeCommand("echo foo")
    puts foo 
   ```
   This would print foo to the stdout

<br>

```crystal
	foo = .executeCommand("echo haha")
	puts foo.reverse
```
This would print ahah to the stdout


## Contributors

  

- [Prongle](https://github.com/Pr0ngleDev) - creator and maintainer