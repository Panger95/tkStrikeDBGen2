import fs from 'fs';
import readline from 'readline';

let hashmap = new Map();

const subcategory = './Subcategory';

async function replaceSubcategory() {
    let filepath = 'order.txt';
    const DROP_SUBCATEGORY = 'DROP TABLE IF EXISTS TKS_SUBCATEGORY;';
    const CREATE_SUBCATEGORY = 'CREATE TABLE TKS_SUBCATEGORY(ID VARCHAR(45) NOT NULL PRIMARY KEY,VERSION INTEGER,NAME VARCHAR(400));';
    const INSERT_SUBCATEGORY = 'INSERT INTO TKS_SUBCATEGORY VALUES';

    let fileStream = fs.createReadStream(filepath);
    let directory = fs.readdirSync(subcategory);
    let output = '';
    let count = 0;

    let rl = readline.createInterface({
        input: fileStream,
        crlfDelay: Infinity
    });

    for await (let line of rl) {
        hashmap.set(line.trim().toUpperCase(), count);
        count++;
    }

    for await (let name of directory) {
        if (!hashmap.has(name.trim().toUpperCase())) {
            hashmap.set(name.trim().toUpperCase(), count);
            count++;
        }
    }

    let size = hashmap.size - 1;
    output = `${DROP_SUBCATEGORY}\n${CREATE_SUBCATEGORY}\n${INSERT_SUBCATEGORY}\n`;
    for await (let [key, value] of hashmap) {
        if (value == size) {
            output += `('${value}',0,'${key}');`;
        } else {
            output += `('${value}',0,'${key}'),\n`;
        }
    }
    fs.writeFileSync('../Import\ Thresholds\ Gen\ 2/Subcategory.sql', output.trim());
};
await replaceSubcategory()

async function replaceGap() {
    let filepath = 'gap.txt';
    const DROP_GAP = 'DROP TABLE IF EXISTS TKS_DIFFERENTIAL_SCORE_DEF;';
    const CREATE_GAP = 'CREATE TABLE TKS_DIFFERENTIAL_SCORE_DEF(ID VARCHAR(45) NOT NULL PRIMARY KEY,VERSION INTEGER,PHASE_ID VARCHAR(45) NOT NULL,SUBCATEGORY_ID VARCHAR(45) NOT NULL,THE_VALUE INTEGER DEFAULT 0);';
    const INSERT_GAP = 'INSERT INTO TKS_DIFFERENTIAL_SCORE_DEF VALUES';

    let fileStream = fs.createReadStream(filepath);
    let output = '';
    let count = 1;

    let rl = readline.createInterface({
        input: fileStream,
        crlfDelay: Infinity
    });

    output = `${DROP_GAP}\n${CREATE_GAP}\n${INSERT_GAP}\n`
    rl.on('line', line => {
        if (hashmap.has(line.trim().toUpperCase())) {
            output += `-- ${line.trim().toUpperCase()}\n`;
            output += `('${count}',0,'06','${hashmap.get(line.trim().toUpperCase())}',99),\n`;
            count++;
            output += `('${count}',0,'07','${hashmap.get(line.trim().toUpperCase())}',99),\n`;
            count++;
            output += `('${count}',0,'08','${hashmap.get(line.trim().toUpperCase())}',99),\n`;
            count++;
            output += `('${count}',0,'11','${hashmap.get(line.trim().toUpperCase())}',99),\n`;
            count++;
        }
    })
    .on('close', () => {
        let final = output.trim().slice(0, -1) + ';';
        fs.writeFileSync('../Import\ Thresholds\ Gen\ 2/Default_Gap.sql', final.trim());
    })
}
await replaceGap();

async function replaceThresholds() {
    const DROP_CATEGORY = 'DROP TABLE IF EXISTS TKS_CATEGORY;';
    const CREATE_CATEGORY = 'CREATE TABLE TKS_CATEGORY(ID VARCHAR(45) NOT NULL PRIMARY KEY,VERSION INTEGER,NAME VARCHAR(400),GENDER VARCHAR(10),SUBCATEGORY_ID VARCHAR(45),BODY_LEVEL INTEGER,HEAD_LEVEL INTEGER);';
    const INSERT_CATEGORY = 'INSERT INTO TKS_CATEGORY VALUES';

    let output = '';
    let count = 1;

    output = `${DROP_CATEGORY}\n${CREATE_CATEGORY}\n${INSERT_CATEGORY}\n`
    for await (let [key, value] of hashmap) {
        let filepath = `${subcategory}/${key}`;
        let name = fs.readdirSync(filepath);
        for (let j = 0; j < name.length; j++) {
            let fileStream = fs.createReadStream(`${filepath}/${name[j]}`);

            let rl = readline.createInterface({
                input: fileStream,
                crlfDelay: Infinity
            });

            let gender = name[j].slice(0, -4);
            output += `-- ${key.toUpperCase()} ${gender.toUpperCase()}\n`;
            for await (let line of rl) {
                output += `('${count.toString().padStart(3, '0')}',0,'${line.split(',')[0].trim()}','${gender}','${value}',${line.split(',')[1].trim()},5),\n`;
                count++;
            }
        }
        let final = output.trim().slice(0, -1) + ';';
        fs.writeFileSync('../Import\ Thresholds\ Gen\ 2/Default_Category_Thresholds.sql', final.trim());
    }
}
await replaceThresholds();