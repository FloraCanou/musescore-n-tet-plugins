import QtQuick 2.1
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
import MuseScore 3.0

MuseScore {
      version:  "1.3.5"
      description: "Retune selection to 41-TET, or whole score if nothing selected."
      menuPath: "Plugins.Notes.Retune 41-TET"

      // WARNING! This doesn't validate the accidental code!
      property variant customKeySigRegex: /\.(.*)\.(.*)\.(.*)\.(.*)\.(.*)\.(.*)\.(.*)/g
      property var stepSize: 1200.0/41
      property variant centOffsets: {
        'a': {
          '-9': stepSize * -26 + 500,        //Abbv
          '-8': stepSize * -25 + 500 + 200,  //Abb
          '-7': stepSize * -24 + 500,        //Abb^
          '-6': stepSize * -23 + 500,        //Adb
          '-5': stepSize * -22 + 500,        //Abv
          '-4': stepSize * -21 + 500 + 100,  //Ab
          '-3': stepSize * -20 + 500,        //Ab^
          '-2': stepSize * -19 + 500,        //Ad
          '-1': stepSize * -18 + 500,        //Av
           0: stepSize * -17 + 500,          //A
           1: stepSize * -16 + 500,          //A^
           2: stepSize * -15 + 500,          //A+
           3: stepSize * -14 + 500,          //A#v
           4: stepSize * -13 + 500 - 100,    //A#
           5: stepSize * -12 + 500,           //A#^
           6: stepSize * -11 + 500,           //A+#
           7: stepSize * -10 + 500,           //Axv
           8: stepSize * -9 + 500 - 200,     //Ax
           9: stepSize * -8 + 500,           //Ax^
        },
        'b': {
          '-9': stepSize * -19 + 300,
          '-8': stepSize * -18 + 300 + 200,
          '-7': stepSize * -17 + 300,
          '-6': stepSize * -16 + 300,
          '-5': stepSize * -15 + 300,
          '-4': stepSize * -14 + 300 + 100,
          '-3': stepSize * -13 + 300,
          '-2': stepSize * -12 + 300,
          '-1': stepSize * -11 + 300,
           0: stepSize * -10 + 300,
           1: stepSize * -9 + 300,
           2: stepSize * -8 + 300,
           3: stepSize * -7 + 300,
           4: stepSize * -6 + 300 - 100,
           5: stepSize * -5 + 300,
           6: stepSize * -4 + 300,
           7: stepSize * -3 + 300,
           8: stepSize * -2 + 300 - 200,
           9: stepSize * -1 + 300,
        },
        'c': {
          '-9': stepSize * -16 + 200,
          '-8': stepSize * -15 + 200 + 200,
          '-7': stepSize * -14 + 200,
          '-6': stepSize * -13 + 200,
          '-5': stepSize * -12 + 200,
          '-4': stepSize * -11 + 200 + 100,
          '-3': stepSize * -10 + 200,
          '-2': stepSize * -9 + 200,
          '-1': stepSize * -8 + 200,
           0: stepSize * -7 + 200,
           1: stepSize * -6 + 200,
           2: stepSize * -5 + 200,
           3: stepSize * -4 + 200,
           4: stepSize * -3 + 200 - 100,
           5: stepSize * -2 + 200,
           6: stepSize * -1 + 200,
           7: stepSize * 0 + 200,
           8: stepSize * 1 + 200 - 200,
           9: stepSize * 2 + 200,
        },
        'd': {
          '-9': stepSize * -9,
          '-8': stepSize * -8 + 200,
          '-7': stepSize * -7,
          '-6': stepSize * -6,
          '-5': stepSize * -5,
          '-4': stepSize * -4 + 100,
          '-3': stepSize * -3,
          '-2': stepSize * -2,
          '-1': stepSize * -1,
           0: 0,
           1: stepSize * 1,
           2: stepSize * 2,
           3: stepSize * 3,
           4: stepSize * 4 - 100,
           5: stepSize * 5,
           6: stepSize * 6,
           7: stepSize * 7,
           8: stepSize * 8 - 200,
           9: stepSize * 9,
        },
        'e': {
          '-9': stepSize * -2 - 200,
          '-8': stepSize * -1 - 200 + 200,
          '-7': stepSize * 0 - 200,
          '-6': stepSize * 1 - 200,
          '-5': stepSize * 2 - 200,
          '-4': stepSize * 3 - 200 + 100,
          '-3': stepSize * 4 - 200,
          '-2': stepSize * 5 - 200,
          '-1': stepSize * 6 - 200,
           0: stepSize * 7 - 200,
           1: stepSize * 8 - 200,
           2: stepSize * 9 - 200,
           3: stepSize * 10 - 200,
           4: stepSize * 11 - 200 - 100,
           5: stepSize * 12 - 200,
           6: stepSize * 13 - 200,
           7: stepSize * 14 - 200,
           8: stepSize * 15 - 200 - 200,
           9: stepSize * 16 - 200,
        },
        'f': {
          '-9': stepSize * 1 - 300,
          '-8': stepSize * 2 - 300 + 200,
          '-7': stepSize * 3 - 300,
          '-6': stepSize * 4 - 300,
          '-5': stepSize * 5 - 300,
          '-4': stepSize * 6 - 300 + 100,
          '-3': stepSize * 7 - 300,
          '-2': stepSize * 8 - 300,
          '-1': stepSize * 9 - 300,
           0: stepSize * 10 - 300,
           1: stepSize * 11 - 300,
           2: stepSize * 12 - 300,
           3: stepSize * 13 - 300,
           4: stepSize * 14 - 300 - 100,
           5: stepSize * 15 - 300,
           6: stepSize * 16 - 300,
           7: stepSize * 17 - 300,
           8: stepSize * 18 - 300 - 200,
           9: stepSize * 19 - 300,
        },
        'g': {
          '-9': stepSize * 8 - 500,
          '-8': stepSize * 9 - 500 + 200,
          '-7': stepSize * 10 - 500,
          '-6': stepSize * 11 - 500,
          '-5': stepSize * 12 - 500,
          '-4': stepSize * 13 - 500 + 100,
          '-3': stepSize * 14 - 500,
          '-2': stepSize * 15 - 500,
          '-1': stepSize * 16 - 500,
           0: stepSize * 17 - 500,
           1: stepSize * 18 - 500,
           2: stepSize * 19 - 500,
           3: stepSize * 20 - 500,
           4: stepSize * 21 - 500 - 100,
           5: stepSize * 22 - 500,
           6: stepSize * 23 - 500,
           7: stepSize * 24 - 500,
           8: stepSize * 25 - 500 - 200,
           9: stepSize * 26 - 500,
        }
      }

      function convertAccidentalToStepsOrNull(acc) {
        switch(acc.trim()) {
        case 'bbv':
          return -9;
        case 'bb':
          return -8;
        case 'bb^':
          return -7;
        case 'db':
          return -6;
        case 'bd':
          return -6;
        case 'bv':
          return -5;
        case 'b':
          return -4;
        case 'b^':
          return -3;
        case 'd':
          return -2;
        case 'v':
          return -1;
        case '':
          return 0;
        case '^':
          return 1;
        case '+':
          return 2;
        case '#v':
          return 3;
        case '#':
          return 4;
        case '#^':
          return 5;
        case '#+':
          return 6;
        case '+#':
          return 6;
        case 'xv':
          return 7;
        case 'x':
          return 8;
        case 'x^':
          return 9;
        default:
          return null;
        }
      }

      // Takes in annotations[].text and returns either
      // a key signature object if str is a valid custom key sig code or null.
      //
      // Valid key sig code is denoted as such:
      //  .f.c.g.d.a.e.b
      // where identifiers f thru b denote a valid accidental code of which
      // will apply to the respective notes.
      //
      // For example, this is Fd major (that sounds like a meantone): .d.d.d.d.b^.b^.bb^
      //
      // whitespace can be placed between dots and accidentals for readability.
      //
      // For the natural accidental, blank or whitespace will both work.
      //
      // Assign the key signature object to the parms.currKeySig field!
      function scanCustomKeySig(str) {
        str = str.trim();
        var keySig = {};
        var res = str.match(customKeySigRegex);
        // For code golfing
        var notes = [null, 'f', 'c', 'g', 'd', 'a', 'e', 'b'];

        if (res === null)
          return null;

        for (var i = 1; i <= 7; i++) {
          var acc = convertAccidentalToStepsOrNull(res[i].trim());
          if (acc !== null)
            keySig[notes[i]] = acc;
          else
            return null;
        }
        
        return keySig;
      }

      // Apply the given function to all notes in selection
      // or, if nothing is selected, in the entire score

      function applyToNotesInSelection(func, parms) {
        var cursor = curScore.newCursor();
        cursor.rewind(1);
        var startStaff;
        var endStaff;
        var endTick;
        var fullScore = false;
        if (!cursor.segment) { // no selection
          fullScore = true;
          startStaff = 0; // start with 1st staff
          endStaff = curScore.nstaves - 1; // and end with last
        } else {
          startStaff = cursor.staffIdx;
          cursor.rewind(2);
          if (cursor.tick == 0) {
            // this happens when the selection includes
            // the last measure of the score.
            // rewind(2) goes behind the last segment (where
            // there's none) and sets tick=0
            endTick = curScore.lastSegment.tick + 1;
          } else {
            endTick = cursor.tick;
          }
          endStaff = cursor.staffIdx;
        }
        console.log(startStaff + " - " + endStaff + " - " + endTick)
        // -------------- Actual thing here -----------------------


        for (var staff = startStaff; staff <= endStaff; staff++) {

          // Reset accidentals at the start of every staff.
          parms.accidentals = {};

          // After every staff, reset the currKeySig back to the original keySig

          parms.currKeySig = parms.keySig;

          // Even if system text is used for key sig, the text
          // won't carry over for all voices (if the text was placed on voice 1, only
          // voice 1 will see the text)
          //
          // Therefore, all the diff custom key sig texts across all 4 voices
          // need to be aggregated into this array before the notes can be
          // tuned.
          var staffKeySigHistory = [];

          // initial run to populate custom key signatures
          for (var voice = 0; voice < 4; voice++) {
            cursor.rewind(1); // goes to start of selection, will reset voice to 0
            cursor.voice = voice;
            cursor.staffIdx = staff;

            if (fullScore)
              cursor.rewind(0);

              var measureCount = 0;
              console.log("processing custom key signatures staff: " + staff + ", voice: " + voice);

              while (cursor.segment && (fullScore || cursor.tick < endTick)) {

                // Check for StaffText key signature changes, then update staffKeySigHistory
                for (var i = 0; i < cursor.segment.annotations.length; i++) {
                  var annotation = cursor.segment.annotations[i];
                  console.log("found annotation type: " + annotation.subtypeName());
                  var maybeKeySig = scanCustomKeySig(annotation.text);
                  if (maybeKeySig !== null) {
                    console.log("detected new custom keySig: " + annotation.text + ", staff: " + staff + ", voice: " + voice);
                    staffKeySigHistory.push({
                      tick: cursor.tick,
                      keySig: maybeKeySig
                    });
                  }
                }

                cursor.next();
              }
          }

          // 2 passes - one to ensure all accidentals are represented acorss
          // all 4 voices, then the second one to apply those accidentals.
          for (var rep = 0; rep < 2; rep++) {
            for (var voice = 0; voice < 4; voice++) {
              cursor.rewind(1); // goes to start of selection, will reset voice to 0
              cursor.voice = voice; //voice has to be set after goTo
              cursor.staffIdx = staff;

              if (fullScore)
                cursor.rewind(0) // if no selection, beginning of score

              var measureCount = 0;

              console.log("processing staff: " + staff + ", voice: " + voice);

              // Loop elements of a voice
              while (cursor.segment && (fullScore || cursor.tick < endTick)) {
                // Note that the parms.accidentals object now stores accidentals
                // from all 4 voices in a staff since microtonal accidentals from one voice
                // should affect subsequent notes on the same line in other voices as well.
                if (cursor.segment.tick == cursor.measure.firstSegment.tick && voice === 0 && rep === 0) {
                  // once new bar is reached, denote new bar in the parms.accidentals.bars object
                  // so that getAccidental will reset. Only do this for the first voice in a staff
                  // since voices in a staff shares the same barrings.
                  if (!parms.accidentals.bars)
                    parms.accidentals.bars = [];

                  parms.accidentals.bars.push(cursor.segment.tick);
                  measureCount ++;
                  console.log("New bar - " + measureCount);
                }

                for (var i = 0; i < staffKeySigHistory.length; i++) {
                  var keySig = staffKeySigHistory[i];
                  if (keySig.tick <= cursor.tick)
                    parms.currKeySig = keySig.keySig;
                }

                if (cursor.element) {
                  if (cursor.element.type == Ms.CHORD) {
                    var graceChords = cursor.element.graceNotes;
                    for (var i = 0; i < graceChords.length; i++) {
                      // iterate through all grace chords
                      var notes = graceChords[i].notes;
                      for (var j = 0; j < notes.length; j++)
                        func(notes[j], cursor.segment, parms);
                    }
                    var notes = cursor.element.notes;
                    for (var i = 0; i < notes.length; i++) {
                      var note = notes[i];
                      func(note, cursor.segment, parms);
                    }
                  }
                }
                cursor.next();
              }
            }
          }
        }
      }

      // This will register an accidental's offset value and tick position.
      // Unified accidental registry is necessary so that special accidentals across
      // different voices in the same staff will affect each other as it should.
      //
      // Only microtonal accidentals need to be registered. Musescore properly handles
      // normal accidentals with TPCs.
      //
      // Remember to reset the parms.accidentals array after every bar & staff!
      function registerAccidental(noteLine, tick, diesisOffset, parms) {
        if (!parms.accidentals[noteLine]) {
          parms.accidentals[noteLine] = [];
        }

        parms.accidentals[noteLine].push({
          tick: tick,
          offset: diesisOffset
        });
      }

      // Returns the diesis offset if a prior microtonal accidental exists
      // before or at the given tick value.
      // Null if there are no explicit microtonal accidentals
      function getAccidental(noteLine, tick, parms) {
        // Tick of the most recent measure just before current tick
        var mostRecentBar = 0;

        for (var i = 0; i < parms.accidentals.bars.length; i++) {
          var barTick = parms.accidentals.bars[i];

          if (barTick > mostRecentBar && barTick <= tick) {
            mostRecentBar = barTick;
          }
        }

        var oldTick = -1;
        var offset = null;

        if (!parms.accidentals[noteLine])
          return null;

        for (var i = 0; i < parms.accidentals[noteLine].length; i++) {
          var acc = parms.accidentals[noteLine][i];

          // Accidentals only count if
          // 1. They are in the same bar as the current note
          // 2. They are before or at the current note's tick
          // 3. It is the most recent accidental that fulfills 1. and 2.
          if (acc.tick >= mostRecentBar && acc.tick <= tick && acc.tick > oldTick) {
            console.log('note line: ' + noteLine + ', steps: ' + acc.offset + ', tick: ' + acc.tick);
            console.log('acc.tick: ' + acc.tick + ', mostRecentBar: ' + mostRecentBar + ', tick: ' + tick + ', oldTick: ' + oldTick);
            offset = acc.offset;
            oldTick = acc.tick;
          }
        }

        return offset;
      }

      function tuneNote(note, segment, parms) {
        var tpc = note.tpc;
        var acc = note.accidental;

        // If tpc is non-natural, there's no need to go through additional steps,
        // since accidentals and key sig are already taken into consideration
        // to produce a non-screw-up tpc.

        // However, if tpc is natural, it needs to be checked against acc and
        // the key signature to truly determine what note it is.

        switch(tpc) {
        case -1: //Fbb
          note.tuning = centOffsets['f'][-8];
          return;
        case 0: //Cbb
          note.tuning = centOffsets['c'][-8];
          return;
        case 1: //Gbb
          note.tuning = centOffsets['g'][-8];
          return;
        case 2: //Dbb
          note.tuning = centOffsets['d'][-8];
          return;
        case 3: //Abb
          note.tuning = centOffsets['a'][-8];
          return;
        case 4: //Ebb
          note.tuning = centOffsets['e'][-8];
          return;
        case 5: //Bbb
          note.tuning = centOffsets['b'][-8];
          return;

        case 6: //Fb
          note.tuning = centOffsets['f'][-4];
          return;
        case 7: //Cb
          note.tuning = centOffsets['c'][-4];
          return;
        case 8: //Gb
          note.tuning = centOffsets['g'][-4];
          return;
        case 9: //Db
          note.tuning = centOffsets['d'][-4];
          return;
        case 10: //Ab
          note.tuning = centOffsets['a'][-4];
          return;
        case 11: //Eb
          note.tuning = centOffsets['e'][-4];
          return;
        case 12: //Bb
          note.tuning = centOffsets['b'][-4];
          return;

        case 20: //F#
          note.tuning = centOffsets['f'][4];
          return;
        case 21: //C#
          note.tuning = centOffsets['c'][4];
          return;
        case 22: //G#
          note.tuning = centOffsets['g'][4];
          return;
        case 23: //D#
          note.tuning = centOffsets['d'][4];
          return;
        case 24: //A#
          note.tuning = centOffsets['a'][4];
          return;
        case 25: //E#
          note.tuning = centOffsets['e'][4];
          return;
        case 26: //B#
          note.tuning = centOffsets['b'][4];
          return;

        case 27: //Fx
          note.tuning = centOffsets['f'][8];
          return;
        case 28: //Cx
          note.tuning = centOffsets['c'][8];
          return;
        case 29: //Gx
          note.tuning = centOffsets['g'][8];
          return;
        case 30: //Dx
          note.tuning = centOffsets['d'][8];
          return;
        case 31: //Ax
          note.tuning = centOffsets['a'][8];
          return;
        case 32: //Ex
          note.tuning = centOffsets['e'][8];
          return;
        case 33: //Bx
          note.tuning = centOffsets['b'][8];
          return;
        }

        // in the event that tpc is considered natural by
        // MuseScore's playback, it would mean that it is
        // either a natural note, or a microtonal accidental.

        var baseNote;
        switch(tpc) {
        case 13:
          baseNote = 'f';
          break;
        case 14:
          baseNote = 'c';
          break;
        case 15:
          baseNote = 'g';
          break;
        case 16:
          baseNote = 'd';
          break;
        case 17:
          baseNote = 'a';
          break;
        case 18:
          baseNote = 'e';
          break;
        case 19:
          baseNote = 'b';
          break;
        }

        //NOTE: Only special accidentals need to be remembered.
        if (note.accidental) {
          var accOffset = null;
          console.log('Note: ' + baseNote + ', Line: ' + note.line + ', Special Accidental: ' + note.accidental);
          if (note.accidentalType == Accidental.NATURAL)
            accOffset = 0;
          else if (note.accidentalType == Accidental.NATURAL_ARROW_DOWN)
            accOffset = -1;
          else if (note.accidentalType == Accidental.NATURAL_ARROW_UP)
            accOffset = 1;
          else if (note.accidentalType == Accidental.MIRRORED_FLAT)
            accOffset = -2;
          else if (note.accidentalType == Accidental.SHARP_SLASH)
            accOffset = 2;
          else if (note.accidentalType == Accidental.FLAT_ARROW_UP)
            accOffset = -3;
          else if (note.accidentalType == Accidental.SHARP_ARROW_DOWN)
            accOffset = 3;
          else if (note.accidentalType == Accidental.FLAT_ARROW_DOWN)
            accOffset = -5;
          else if (note.accidentalType == Accidental.SHARP_ARROW_UP)
            accOffset = 5;
          else if (note.accidentalType == Accidental.MIRRORED_FLAT2)
            accOffset = -6;
          else if (note.accidentalType == Accidental.SHARP_SLASH4)
            accOffset = 6;
          else if (note.accidentalType == Accidental.FLAT2_ARROW_UP)
            accOffset = -7;
          else if (note.accidentalType == Accidental.SHARP2_ARROW_DOWN)
            accOffset = 7;
          else if (note.accidentalType == Accidental.FLAT2_ARROW_DOWN)
            accOffset = -9;
          else if (note.accidentalType == Accidental.SHARP2_ARROW_UP)
            accOffset = 9;

          if (accOffset !== null) {
            registerAccidental(note.line, segment.tick, accOffset, parms);
          }
        }

        // Check for prev accidentals first, will be null if not present
        var stepsFromBaseNote = getAccidental(note.line, segment.tick, parms);
        if (stepsFromBaseNote === null) {
          // No accidentals - check key signature.
          stepsFromBaseNote = parms.currKeySig[baseNote];
        }

        console.log("Base Note: " + baseNote + ", steps: " + stepsFromBaseNote);
        note.tuning = centOffsets[baseNote][stepsFromBaseNote];
        return;
      }

      onRun: {
        console.log("hello 41tet");

        if (typeof curScore === 'undefined')
              Qt.quit();

        var parms = {};

        /*
          key signature as denoted by the TextFields.

          NOTE: parms.keySig has been deprecated, it now serves as a placeholder
                for the natural key signature.

          THIS SHOULD BE READONLY!
        */
        parms.keySig = {
          'f': 0,
          'c': 0,
          'g': 0,
          'd': 0,
          'a': 0,
          'e': 0,
          'b': 0
        };

        /*
        Used for StaffText declared custom key signature.
        No worries about handling system text vs staff text as
        the annotation automatically applies appropriately.

        Will be reset to the original TextField denoted key signature
        at the start of each staff, although using both TextField
        and StaffText(22)/SystemText(21) methods of custom key sig
        entry is STRONGLY DISCOURAGED due to extreme unpredicatability.
        */
        parms.currKeySig = parms.keySig

        parms.accidentals = {};

        applyToNotesInSelection(tuneNote, parms);
        Qt.quit();
      }
}
