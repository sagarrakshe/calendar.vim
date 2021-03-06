" =============================================================================
" Filename: autoload/calendar/task/google.vim
" Author: itchyny
" License: MIT License
" Last Change: 2014/01/21 17:45:04.
" =============================================================================

let s:save_cpo = &cpo
set cpo&vim

function! calendar#task#google#new()
  return deepcopy(s:self)
endfunction

let s:self = {}

function! s:self.get_taskList() dict
  return calendar#google#task#getTaskList()
endfunction

function! s:self.get_task() dict
  return calendar#google#task#getTasks()
endfunction

function! s:self.insert(listid, previous, title) dict
  call calendar#google#task#insert(a:listid, a:previous, a:title)
endfunction

function! s:self.update(listid, taskid, title) dict
  call calendar#google#task#update(a:listid, a:taskid, a:title)
endfunction

function! s:self.complete(listid, taskid) dict
  call calendar#google#task#complete(a:listid, a:taskid)
endfunction

function! s:self.uncomplete(listid, taskid) dict
  call calendar#google#task#uncomplete(a:listid, a:taskid)
endfunction

function! s:self.clear_completed(listid) dict
  call calendar#google#task#clear_completed(a:listid)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
