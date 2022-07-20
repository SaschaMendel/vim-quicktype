# vim-quicktype
Simple [quicktype](https://github.com/quicktype/quicktype) wrapper for (neo)vim.



## Requirements
Install quicktype to use this plugin

```
npm install -g quicktype
```


## Usage
QuickType can be ran on selection or on the whole file.

## Example
Select text with visual mode and run:
```
:QuickType <?source>
```
Output of quicktype will replace selection/file.

The default source is `json` and the generation language is inferred from current filetype

