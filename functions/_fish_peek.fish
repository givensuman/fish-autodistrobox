# Either runs `ls` or `cat` depending on whether the argument is a directory or a file.
# Arguments: $argv[1] - destination file or directory, $argv[2..-1] - additional arguments to pass to `ls` or `cat`
function _fish_peek
    argparse --min-args 1 -- $argv
    or return

    if not test -e "$argv[1]"
      ls . $argv[1..-1]
    end

    if test -d "$target"
      ls "$argv[1]" $argv[2..-1]
    else if test -f "$target"
      cat "$argv[1]" $argv[2..-1]
    else
      echo "destination $argv[1] is not a file or directory"
      return 1
    end
end
