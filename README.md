# N-Edo Retuner Plugin for Musescore 2 / 3

Musescore plugin to automatically retune notes in any edo based on traditional heptatonic scale. 

**The code is edo-agnostic!**
Just change the number in line 7: 
`property var n: 24`
to whatever edo you like and boom, you have it! 

For the accidentals used in each edo, see [Alternative Symbols for Ups and Downs Notation](https://en.xen.wiki/w/Alternative_Symbols_for_Ups_and_Downs_Notation). 

That's how you're supposed to use the plugin, but undocumented use are *not* forbidden. 

Edos known to work well: 
> 10, 15, 16, 19, 22, 27, 29, 31, 34 (covering 17), 36, 41, 46, 48 (covering 24), 53, 72

Edos known to be impractical for a lack of accidental symbols available: 
> 21, 26, 28, 33, 35, 40, 45, 47, 52, 64

Edos known to be impractical for exceeding the limit of sharp value: 
> 59, 66, 71, …

**Important: what's different from the original**

1. D-centered tuning, for the least net offset; 
2. Fifth-based key signatures, since I reckon it more intuitive. 

> I prefer the original A-centered tuning / tone-based key signatures.

You're free to do it yourself. 

> You said they're edo-agnostic, right? Why don't you do it a single file and when I launch it a messagebox pops up and let me type the edo?

Actually, it's easier to (1) bind a hotkey (2) press it (3) boom, the notes are tuned. 

Discussion welcomed. Detailed documentation below. 

## Usage

Download the QML files and put them in the plugins folder.

To retune the entire score as is, run the plugin located in Plugins > Notes > Retune n-TET.

To only retune selected notes, make a selection before running the plugin.

--------

## Scale and Accidentals

The plugin assumes traditional heptatonic scale. In all cases, the large tones are between D-E, F-G, G-A, A-B, and C-D. The small tones are between E-F and B-C. 

Accidentals can be found in the [advanced palette](https://musescore.org/en/handbook/palettes-and-workspaces#workspaces). 

### 19-Edo

19-edo doesn't even use any custom accidentals. A sharp raises 1 step. Other sharp-1 edos are either trivial or impractical thus not provided. 

### Sharp-2 Edos (10, 17, 24, 31)

These edos have a sharp that raises 2 steps. 

|  Edo  | Steps (Large:Small) | Note |
| :---: | :---: | :--- |
|   10  |  2:0  ||
|   17  |  3:1  | Covered by 34-edo |
|   24  |  4:2  | Covered by 48-edo |
|   31  |  5:3  ||

<details>
<summary>These are the accidentals used by the plugin. </summary>

| Steps |             Accidental              | Steps |             Accidental              |
| :---: | :---------------------------------: | :---: | :---------------------------------: |
|    0  | ![Natural](images/n.png)            |
|   -1  | ![Semiflat](images/d.png)           |   +1  | ![Semisharp](images/+.png)          |
|   -2  | ![Flat](images/b.png)               |   +2  | ![Sharp](images/s.png)              |
|   -3  | ![Sesquiflat](images/db.png)        |   +3  | ![Sesquisharp](images/s+.png)       |
|   -4  | ![Double flat](images/bb.png)       |   +4  | ![Double sharp](images/x.png)       |
</details>

*You can use ups and downs in place of semisharps and semiflats for these edos.*
*That happens to be the case. I didn't mean to enable it.* 

### Sharp-3 Edos (15, 22, 29, 36)

These edos have a sharp that raises 3 steps. 

|  Edo  | Steps (Large:Small) | Note |
| :---: | :---: | --- |
|   15  |  3:0  ||
|   22  |  4:1  ||
|   29  |  5:2  ||
|   36  |  6:3  ||

<details>
<summary>These are the accidentals used by the plugin. </summary>

| Steps |             Accidental              | Steps |             Accidental              |
| :---: | :---------------------------------: | :---: | :---------------------------------: |
|    0  | ![Natural](images/n.png)            |
|   -1  | ![Down](images/v.png)               |   +1  | ![Up](images/u.png)                 |
|   -2  | ![Flat up](images/bu.png)           |   +2  | ![Sharp down](images/sv.png)        |
|   -3  | ![Flat](images/b.png)               |   +3  | ![Sharp](images/s.png)              |
|   -4  | ![Flat down](images/bv.png)         |   +4  | ![Sharp up](images/su.png)          |
|   -5  | ![Double flat up](images/bbu.png)   |   +5  | ![Double sharp down](images/xv.png) |
|   -6  | ![Double flat](images/bb.png)       |   +6  | ![Double sharp](images/x.png)       |
|   -7  | ![Double flat down](images/bbv.png) |   +7  | ![Double sharp up](images/xu.png)   |
</details>

### Sharp-4 Edos (27, 34, 41, 48)

These edos have a sharp that raises 4 steps. 

|  Edo  | Steps (Large:Small) | Note |
| :---: | :---: | --- |
|   27  |  5:1  ||
|   34  |  6:2  ||
|   41  |  7:3  ||
|   48  |  8:4  ||

<details>
<summary>These are the accidentals used by the plugin. </summary>

| Steps |             Accidental              | Steps |             Accidental              |
| :---: | :---------------------------------: | :---: | :---------------------------------: |
|    0  | ![Natural](images/n.png)            |
|   -1  | ![Down](images/v.png)               |   +1  | ![Up](images/u.png)                 |
|   -2  | ![Semiflat](images/d.png)           |   +2  | ![Semisharp](images/+.png)          |
|   -3  | ![Flat up](images/bu.png)           |   +3  | ![Sharp down](images/sv.png)        |
|   -4  | ![Flat](images/b.png)               |   +4  | ![Sharp](images/s.png)              |
|   -5  | ![Flat down](images/bv.png)         |   +5  | ![Sharp up](images/su.png)          |
|   -6  | ![Sesquiflat](images/db.png)        |   +6  | ![Sesquisharp](images/s+.png)       |
|   -7  | ![Double flat up](images/bbu.png)   |   +7  | ![Double sharp down](images/xv.png) |
|   -8  | ![Double flat](images/bb.png)       |   +8  | ![Double sharp](images/x.png)       |
|   -9  | ![Double flat down](images/bbv.png) |   +9  | ![Double sharp up](images/xu.png)   |
</details>

### Sharp-5 Edos (46, 53)

These edos have a sharp that raises 5 steps. 

|  Edo  | Steps (Large:Small) | Note |
| :---: | :---: | --- |
|   46  |  8:3  ||
|   53  |  9:4  ||

<details>
<summary>These are the accidentals used by the plugin. </summary>

| Steps |              Accidental               | Steps |              Accidental               |
| :---: | :-----------------------------------: | :---: | :-----------------------------------: |
|    0  | ![Natural](images/n.png)              |
|   -1  | ![Down1](images/v1.png)               |   +1  | ![Up1](images/u1.png)                 |
|   -2  | ![Down2](images/v2.png)               |   +2  | ![Up2](images/u2.png)                 |
|   -3  | ![Flat up2](images/bu2.png)           |   +3  | ![Sharp down2](images/sv2.png)        |
|   -4  | ![Flat up1](images/bu1.png)           |   +4  | ![Sharp down1](images/sv1.png)        |
|   -5  | ![Flat](images/b.png)                 |   +5  | ![Sharp](images/s.png)                |
|   -6  | ![Flat down1](images/bv1.png)         |   +6  | ![Sharp up1](images/su1.png)          |
|   -7  | ![Flat down2](images/bv2.png)         |   +7  | ![Sharp up2](images/su2.png)          |
|   -8  | ![Double flat up2](images/bbu2.png)   |   +8  | ![Double sharp down2](images/xv2.png) |
|   -9  | ![Double flat up1](images/bbu1.png)   |   +9  | ![Double sharp down1](images/xv1.png) |
|  -10  | ![Double flat](images/bb.png)         |  +10  | ![Double sharp](images/x.png)         |
|  -11  | ![Double flat down1](images/bbv1.png) |  +11  | ![Double sharp up1](images/xu1.png)   |
|  -12  | ![Double flat down2](images/bbv2.png) |  +12  | ![Double sharp up2](images/xu2.png)   |
</details>

### Sharp-6 Edos (72)

These edos have a sharp that raises 6 steps. 

| Edo | Steps (Large:Small) | Note |
| :---: | :---: | --- |
|   72  | 12:6  ||

<details>
<summary>These are the accidentals used by the plugin. </summary>

| Steps |              Accidental               | Steps |              Accidental               |
| :---: | :-----------------------------------: | :---: | :-----------------------------------: |
|    0  | ![Natural](images/n.png)              |
|   -1  | ![Down1](images/v1.png)               |   +1  | ![Up1](images/u1.png)                 |
|   -2  | ![Down2](images/v2.png)               |   +2  | ![Up2](images/u2.png)                 |
|   -3  | ![Semiflat](images/d.png)             |   +3  | ![Semisharp](images/+.png)            |
|   -4  | ![Flat up2](images/bu2.png)           |   +4  | ![Sharp down2](images/sv2.png)        |
|   -5  | ![Flat up1](images/bu1.png)           |   +5  | ![Sharp down1](images/sv1.png)        |
|   -6  | ![Flat](images/b.png)                 |   +6  | ![Sharp](images/s.png)                |
|   -7  | ![Flat down1](images/bv1.png)         |   +7  | ![Sharp up1](images/su1.png)          |
|   -8  | ![Flat down2](images/bv2.png)         |   +8  | ![Sharp up2](images/su2.png)          |
|   -9  | ![Sesquiflat](images/db.png)          |   +9  | ![Sesquisharp](images/s+.png)         |
|  -10  | ![Double flat up2](images/bbu2.png)   |  +10  | ![Double sharp down2](images/xv2.png) |
|  -11  | ![Double flat up1](images/bbu1.png)   |  +11  | ![Double sharp down1](images/xv1.png) |
|  -12  | ![Double flat](images/bb.png)         |  +12  | ![Double sharp](images/x.png)         |
|  -13  | ![Double flat down1](images/bbv1.png) |  +13  | ![Double sharp up1](images/xu1.png)   |
|  -14  | ![Double flat down2](images/bbv2.png) |  +14  | ![Double sharp up2](images/xu2.png)   |
</details>

### Flat-1 Edos (9, 16, 23)

These edos have a sharp that *lowers* 1 step. No custom accidentals needed. 

|  Edo  | Steps (Large:Small) | Note |
| :---: | :---: | --- |
|    9  |  1:2  ||
|   16  |  2:3  ||
|   23  |  3:4  ||

### Custom key signatures

As MuseScore doesn't completely support
[custom key signatures](https://musescore.org/en/handbook/key-signatures#custom-key-signatures),
any custom key signature can't be read by the plugin, at least for now.

Should you want to create a microtonal key signature and have it affect the
playback, you have to explicitly declare the custom key signature using
system/staff text containing accidental code:

Note that explicit accidentals will still take precedence over the
declared custom key signature, behaving exactly the same way a key signature would.

#### Accidental Code

<details>
<summary>For sharp value <=4: </summary>

|        Accidental        | Textual representation |        Accidental         | Textual representation |
| :--------------------------------: | :----------: | :--------------------------------: | :-----------: |
| ![Natural](images/n.png)           | Blank / any other character |
| ![Down](images/v.png)              | `v`          | ![Up](images/u.png)                | `^`           |
| ![Semiflat](images/d.png)          | `d`          | ![Semisharp](images/+.png)         | `+`           |
| ![Flat up](images/bu.png)          | `b^`         | ![Sharp down](images/sv.png)       | `#v`          |
| ![Flat](images/b.png)              | `b`          | ![Sharp](images/s.png)             | `#`           |
| ![Flat down](images/bv.png)        | `bv`         | ![Sharp up](images/su.png)         | `#^`          |
| ![Sesquiflat](images/db.png)       | `db` or `bd` | ![Sesquisharp](images/s+.png)      | `#+` or `+#`  |
| ![Doubleflat up](images/bbu.png)   | `bb^`        | ![Doublesharp down](images/xv.png) | `xv`          |
| ![Doubleflat](images/bb.png)       | `bb`         | ![Doublesharp](images/x.png)       | `x`           |
| ![Doubleflat down](images/bbv.png) | `bbv`        | ![Doublesharp up](images/xu.png)   | `x^`          |
</details>

<details>
<summary>For sharp value 5–8: </summary>

|           Accidental          | Textual representation |         Accidental          | Textual representation |
| :----------------------------------: | :-------------: | :----------------------------------: | :-----------: |
| ![Natural](images/n.png)             | Blank / any other character |
| ![Down1](images/v1.png)              | `v` or `v1`     | ![Up1](images/u1.png)                | `^` or `^1`   |
| ![Down2](images/v2.png)              | `v2`            | ![Up2](images/u2.png)                | `^2`          |
| ![Down3](images/v3.png)              | `v3`            | ![Up3](images/u3.png)                | `^3`          |
| ![Semiflat](images/d.png)            | `d`             | ![Semisharp](images/+.png)           | `+`           |
| ![Flat up3](images/bu3.png)          | `b^3`           | ![Sharp down3](images/sv3.png)       | `#v3`         |
| ![Flat up2](images/bu2.png)          | `b^2`           | ![Sharp down2](images/sv2.png)       | `#v2`         |
| ![Flat up1](images/bu1.png)          | `b^` or `b^1`   | ![Sharp down1](images/sv1.png)       | `#v` or `#v1` |
| ![Flat](images/b.png)                | `b`             | ![Sharp](images/s.png)               | `#`           |
| ![Flat down1](images/bv1.png)        | `bv` or `bv1`   | ![Sharp up1](images/su1.png)         | `#^` or `#^1` |
| ![Flat down2](images/bv2.png)        | `bv2`           | ![Sharp up2](images/su2.png)         | `#^2`         |
| ![Flat down3](images/bv3.png)        | `bv3`           | ![Sharp up3](images/su3.png)         | `#^3`         |
| ![Sesquiflat](images/db.png)         | `db` or `bd`    | ![Sesquisharp](images/s+.png)        | `#+` or `+#`  |
| ![Doubleflat up3](images/bbu3.png)   | `bb^3`          | ![Doublesharp down3](images/xv3.png) | `xv3`         |
| ![Doubleflat up2](images/bbu2.png)   | `bb^2`          | ![Doublesharp down2](images/xv2.png) | `xv2`         |
| ![Doubleflat up1](images/bbu1.png)   | `bb^` or `bb^1` | ![Doublesharp down1](images/xv1.png) | `xv` or `xv1` |
| ![Doubleflat](images/bb.png)         | `bb`            | ![Doublesharp](images/x.png)         | `x`           |
| ![Doubleflat down1](images/bbv1.png) | `bbv` or `bbv1` | ![Doublesharp up1](images/xu1.png)   | `x^` or `x^1` |
| ![Doubleflat down2](images/bbv2.png) | `bbv2`          | ![Doublesharp up2](images/xu2.png)   | `x^2`         |
| ![Doubleflat down3](images/bbv3.png) | `bbv3`          | ![Doublesharp up3](images/xu3.png)   | `x^3`         |
</details>

![Staff text custom key sig](images/2018/06/staff-text-custom-key-sig.png)

You can indicate custom key signatures by entering the key signature using
System Text or Staff Text.

- Use **System Text** (`Ctrl` + `Shift` + `T`) if you want the key signature code to affect
  all staves from there onwards
- Use **Staff Text** (`Shift` + `T`) if you only want the code to affect the staff that it is on.
  This is especially useful when using custom **local** key signatures!
- Remember to make the custom key signature code invisible! (Press `V` to toggle visibility)

Key signature code syntax:

1. Start with a dot `.`
2. Put the textual representation of the accidental for the note **F** using the [accidental code](#accidental-code)
3. Put another dot `.`
4. Put the required accidental for **C**
5. Repeat from **F** thru **B** 

Note that There **must** be seven `.` in total,
natural accidentals are denoted by leaving the space blank, or using any other character
that does not represent an accidental.

Spaces/newlines can be placed before or after the dots to improve readability.

**For example:**
Ab-down major in ups-and-downs mode can be denoted like this: `.#v.#v.#v.v.v.v.v`
representing the key signature of F#v, C#v, G#v, D#v, Av, Ev, Bv.

**Important:** Following a custom key signature, should there be a modulation to any standard
key signature, it is still necessary to reset the custom key signature to the default, that is,
`.......`. Otherwise, the previous custom key signature would still be in effect, as it is being
overridden. Regular and custom key signatures are not compatible with each other.


### Note to self / developers:

#### Definitions:

`tpc`
: Tonal pitch class

`segment.annotations[idx].textStyleType`
: 22 if Staff Text,
: 21 if System Text

`segment.annotations[idx].text`
: Contains given text

## TODO:

- Let's follow the upstream. 

## [Changelog](./CHANGELOG.md)

