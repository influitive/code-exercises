const data = [ 'the horse and the hound and the horn that belonged to',
  'the farmer sowing his corn that kept',
  'the rooster that crowed in the morn that woke',
  'the priest all shaven and shorn that married',
  'the man all tattered and torn that kissed',
  'the maiden all forlorn that milked',
  'the cow with the crumpled horn that tossed',
  'the dog that worried',
  'the cat that killed',
  'the rat that ate',
  'the malt that lay in',
  'the house that Jack built' ];

function repeatArr(count, arr) {
  const result = [];
  arr.forEach(item => {
    for (let j = 0; j < count; j++) result.push(item);
  });
  return result;
}

function makeLineArray(count, data) {
  return data.slice(-count);
}

function makeDoubleLineArray(count, data) {
  return repeatArr(2, makeLineArray(count, data));
}

function makeVerse(lineFunc) {
  return function(count, lineArray) {
    const lines = lineFunc(count, lineArray);
    const [head, ...tail] = lines;
    return [`This is ${head}`, ...tail];
  };
}

function makeSong(verseFunc) {
  return function(data) {
    const verses = [];
    for (let i = 1; i < data.length; i++) {
      verses.push(verseFunc(i, data).join('\n'));
    }
    return verses;
  };
}

function print(songFunc) {
  console.log(songFunc(data).join('\n\n---------------------\n\n'));
}

export function doublePrint() {
  const verseFunc = makeVerse(makeDoubleLineArray);
  const songFunc = makeSong(verseFunc);
  print(songFunc);
}

export function singlePrint() {
  const verseFunc = makeVerse(makeLineArray);
  const songFunc = makeSong(verseFunc);
  print(songFunc);
}
