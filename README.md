This is a Ruby script to generate Euclidean rhythm patterns. **This will not generate actual sound, or even MIDI.** The output is a series of one's and zeros, which can be used as a guide for programming the rhythm into a step sequencer.

I modeled it off of this article which is the both the best description of the algorithm, as well as code example, that I have been able to find:

[https://medium.com/code-music-noise/euclidean-rhythms-391d879494df
](https://medium.com/code-music-noise/euclidean-rhythms-391d879494df)

While I do use this script, I mostly found it an interesting exercise in implementing the algorithm in Ruby.

## Install

On any Ruby 2.3+ enabled system, clone this repository and navigate to the directory.

No dependencies need to be installed.

## Usage and Examples

Invoke using the `ruby` command in your terminal.

The script accepts four positional parameters:

* steps - number of steps in the euclidean sequence.
* pulses - the number of pulses to spread across the steps. 
* total_steps (optional) - repeat the euclidean sequence until this many steps are filled.
* rotation (optional) - number of steps to rotate the sequence.

This example spreads 4 pulses across 16 steps, giving us the "four on the floor" sound that everyone is raving about:

```
$ ruby euclidean.rb 16 4
[1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0]
```

Here we start getting sassy with an odd number of pulses:

```
$ ruby euclidean.rb 16 5
[1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0]
```

4 pulses... but rotated by 2 steps:

```
$ ruby euclidean.rb 16 4 0 2
[0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0]
```

3 pulses across 7 steps:

```
$ ruby euclidean.rb 7 3 
[1, 0, 1, 0, 1, 0, 0]
```

3 pulses across 7 steps, for a total of 16 steps. 

```
$ ruby euclidean.rb 7 3 16
[1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0]
```

## To Do

Nothing probably. I doubt I will do much more with this script other than use it from time to time.