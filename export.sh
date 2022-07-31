#!/bin/bash

# Created by argbash-init v2.10.0
# ARG_OPTIONAL_BOOLEAN([universities],[u],[Export the icons of the universities],[on])
# ARG_OPTIONAL_BOOLEAN([companies],[c],[Export the icons of the companies],[on])
# ARG_OPTIONAL_BOOLEAN([studies],[s],[Export the icons of the studies],[on])
# ARG_OPTIONAL_BOOLEAN([background],[b],[Export the icons with their background],[on])
# ARG_OPTIONAL_BOOLEAN([transparent],[t],[Export the icons with a transaprent background],[on])
# ARG_OPTIONAL_SINGLE([output-directory],[o],[Directory to put the results],[out])
# ARG_POSITIONAL_INF([sizes],[The pixel size to export the icons in],[0],[64])
# ARG_HELP([Export th svg icons in different sizes.])
# ARGBASH_GO()
# needed because of Argbash --> m4_ignore([
### START OF CODE GENERATED BY Argbash v2.10.0 one line above ###
# Argbash is a bash code generator used to get arguments parsing right.
# Argbash is FREE SOFTWARE, see https://argbash.io for more info


die()
{
	local _ret="${2:-1}"
	test "${_PRINT_HELP:-no}" = yes && print_help >&2
	echo "$1" >&2
	exit "${_ret}"
}


begins_with_short_option()
{
	local first_option all_short_options='ucsbtoh'
	first_option="${1:0:1}"
	test "$all_short_options" = "${all_short_options/$first_option/}" && return 1 || return 0
}

# THE DEFAULTS INITIALIZATION - POSITIONALS
_positionals=()
_arg_sizes=("64")
# THE DEFAULTS INITIALIZATION - OPTIONALS
_arg_universities="on"
_arg_companies="on"
_arg_studies="on"
_arg_background="on"
_arg_transparent="on"
_arg_output_directory="out"


print_help()
{
	printf '%s\n' "Export th svg icons in different sizes."
	printf 'Usage: %s [-u|--(no-)universities] [-c|--(no-)companies] [-s|--(no-)studies] [-b|--(no-)background] [-t|--(no-)transparent] [-o|--output-directory <arg>] [-h|--help] [<sizes-1>] ... [<sizes-n>] ...\n' "$0"
	printf '\t%s\n' "<sizes>: The pixel size to export the icons in (defaults for <sizes>: '64')"
	printf '\t%s\n' "-u, --universities, --no-universities: Export the icons of the universities (on by default)"
	printf '\t%s\n' "-c, --companies, --no-companies: Export the icons of the companies (on by default)"
	printf '\t%s\n' "-s, --studies, --no-studies: Export the icons of the studies (on by default)"
	printf '\t%s\n' "-b, --background, --no-background: Export the icons with their background (on by default)"
	printf '\t%s\n' "-t, --transparent, --no-transparent: Export the icons with a transaprent background (on by default)"
	printf '\t%s\n' "-o, --output-directory: Directory to put the results (default: 'out')"
	printf '\t%s\n' "-h, --help: Prints help"
}


parse_commandline()
{
	_positionals_count=0
	while test $# -gt 0
	do
		_key="$1"
		case "$_key" in
			-u|--no-universities|--universities)
				_arg_universities="on"
				test "${1:0:5}" = "--no-" && _arg_universities="off"
				;;
			-u*)
				_arg_universities="on"
				_next="${_key##-u}"
				if test -n "$_next" -a "$_next" != "$_key"
				then
					{ begins_with_short_option "$_next" && shift && set -- "-u" "-${_next}" "$@"; } || die "The short option '$_key' can't be decomposed to ${_key:0:2} and -${_key:2}, because ${_key:0:2} doesn't accept value and '-${_key:2:1}' doesn't correspond to a short option."
				fi
				;;
			-c|--no-companies|--companies)
				_arg_companies="on"
				test "${1:0:5}" = "--no-" && _arg_companies="off"
				;;
			-c*)
				_arg_companies="on"
				_next="${_key##-c}"
				if test -n "$_next" -a "$_next" != "$_key"
				then
					{ begins_with_short_option "$_next" && shift && set -- "-c" "-${_next}" "$@"; } || die "The short option '$_key' can't be decomposed to ${_key:0:2} and -${_key:2}, because ${_key:0:2} doesn't accept value and '-${_key:2:1}' doesn't correspond to a short option."
				fi
				;;
			-s|--no-studies|--studies)
				_arg_studies="on"
				test "${1:0:5}" = "--no-" && _arg_studies="off"
				;;
			-s*)
				_arg_studies="on"
				_next="${_key##-s}"
				if test -n "$_next" -a "$_next" != "$_key"
				then
					{ begins_with_short_option "$_next" && shift && set -- "-s" "-${_next}" "$@"; } || die "The short option '$_key' can't be decomposed to ${_key:0:2} and -${_key:2}, because ${_key:0:2} doesn't accept value and '-${_key:2:1}' doesn't correspond to a short option."
				fi
				;;
			-b|--no-background|--background)
				_arg_background="on"
				test "${1:0:5}" = "--no-" && _arg_background="off"
				;;
			-b*)
				_arg_background="on"
				_next="${_key##-b}"
				if test -n "$_next" -a "$_next" != "$_key"
				then
					{ begins_with_short_option "$_next" && shift && set -- "-b" "-${_next}" "$@"; } || die "The short option '$_key' can't be decomposed to ${_key:0:2} and -${_key:2}, because ${_key:0:2} doesn't accept value and '-${_key:2:1}' doesn't correspond to a short option."
				fi
				;;
			-t|--no-transparent|--transparent)
				_arg_transparent="on"
				test "${1:0:5}" = "--no-" && _arg_transparent="off"
				;;
			-t*)
				_arg_transparent="on"
				_next="${_key##-t}"
				if test -n "$_next" -a "$_next" != "$_key"
				then
					{ begins_with_short_option "$_next" && shift && set -- "-t" "-${_next}" "$@"; } || die "The short option '$_key' can't be decomposed to ${_key:0:2} and -${_key:2}, because ${_key:0:2} doesn't accept value and '-${_key:2:1}' doesn't correspond to a short option."
				fi
				;;
			-o|--output-directory)
				test $# -lt 2 && die "Missing value for the optional argument '$_key'." 1
				_arg_output_directory="$2"
				shift
				;;
			--output-directory=*)
				_arg_output_directory="${_key##--output-directory=}"
				;;
			-o*)
				_arg_output_directory="${_key##-o}"
				;;
			-h|--help)
				print_help
				exit 0
				;;
			-h*)
				print_help
				exit 0
				;;
			*)
				_last_positional="$1"
				_positionals+=("$_last_positional")
				_positionals_count=$((_positionals_count + 1))
				;;
		esac
		shift
	done
}


assign_positional_args()
{
	local _positional_name _shift_for=$1
	_positional_names=""
	_our_args=$((${#_positionals[@]} - 0))
	for ((ii = 0; ii < _our_args; ii++))
	do
		_positional_names="$_positional_names _arg_sizes[$((ii + 0))]"
	done

	shift "$_shift_for"
	for _positional_name in ${_positional_names}
	do
		test $# -gt 0 || break
		eval "$_positional_name=\${1}" || die "Error during argument parsing, possibly an Argbash bug." 1
		shift
	done
}

parse_commandline "$@"
assign_positional_args 1 "${_positionals[@]}"

# OTHER STUFF GENERATED BY Argbash

### END OF CODE GENERATED BY Argbash (sortof) ### ])
# [ <-- needed because of Argbash

joinByChar() {
  local IFS="$1"
  shift
  echo "$*"
}

# This function is to export a svg to png with the given path and name
export_svg () {
  svg_path=$1
  name=$2

  if [ ! -f "$svg_path" ]; then
    echo "Can't find $svg_path for $name"
    return
  fi


  tmpfile=$(mktemp /tmp/svg_logos.XXXXXX)
  cp $svg_path $tmpfile

  exports=("select:black;selection-hide")

  # For every size export a transparent and background version (if neccesery)
  for s in ${_arg_sizes[@]}; do
    if [ "$_arg_background" = on ]; then
      output_file="$_arg_output_directory/background_$s/$name.png"
      exports+=("select:background;selection-unhide")
      exports+=("export-type:png;export-background-opacity:0;export-width:$s;export-filename:$output_file;export-do")
    fi
    if [ "$_arg_transparent" = on ]; then
      output_file="$_arg_output_directory/transparent_$s/$name.png"
      exports+=("select:background;selection-hide")
      exports+=("export-type:png;export-background-opacity:0;export-width:$s;export-filename:$output_file;export-do")
    fi
  done

  echo "Exporting $name from $svg_path"

  inkscape --actions="`joinByChar ';' ${exports[@]}`" $tmpfile

  rm "$tmpfile"
}

UNIVERSITIES_PATH="universities"
COMPANIES_PATH="companies"
STUDIES_PATH="studies"

# Make the output directories
[ -d $_arg_output_directory ] || mkdir $_arg_output_directory
for s in ${_arg_sizes[@]}; do
  if [ "$_arg_background" = on ]; then
    output_dir="$_arg_output_directory/background_$s"
    [ -d $output_dir ] || mkdir $output_dir
  fi
  if [ "$_arg_transparent" = on ]; then
    output_dir="$_arg_output_directory/transparent_$s"
    [ -d $output_dir ] || mkdir $output_dir
  fi
done

# Merge the organization jsons
organizations_paths=()
if [ "$_arg_universities" = on ]; then
  organizations_paths+=( "$UNIVERSITIES_PATH/organizations.json" )
fi
if [ "$_arg_companies" = on ]; then
  organizations_paths+=( "$COMPANIES_PATH/organizations.json" )
fi
if [ "$_arg_studies" = on ]; then
  organizations_paths+=( "$STUDIES_PATH/organizations.json" )
fi

jq -s "[.[][] | {\"id\": .id, \"name\": .name, \"formal_name\": .formal_name, \"country\": (.country? + \"\")}]" "${organizations_paths[@]}" > "$_arg_output_directory/organizations.json"

# Export the svgs
if [ "$_arg_universities" = on ]; then
  organizations=$(cat "$UNIVERSITIES_PATH/organizations.json" | jq -r .\[\].id)
  for i in $organizations; do
    export_svg "$UNIVERSITIES_PATH/logos/$i.svg" $i
  done
fi
if [ "$_arg_companies" = on ]; then
  organizations=$(cat "$COMPANIES_PATH/organizations.json" | jq -r .\[\].id)
  for i in $organizations; do
    export_svg "$COMPANIES_PATH/logos/$i.svg" $i
  done
fi
if [ "$_arg_studies" = on ]; then
	SAVEIFS=$IFS   # Save current IFS (Internal Field Separator)
	IFS=$'\n'      # Change IFS to newline char
  organizations=($(cat "$STUDIES_PATH/organizations.json" | jq -r .\[\].id))
  combinations=($(cat "$STUDIES_PATH/organizations.json" | jq -r ".[].studies|join(\" \")"))
	IFS=$SAVEIFS   # Restore original IFS

  for i in "${!organizations[@]}"; do
		tmpsvg=$(mktemp /tmp/svg_logos.XXXXXX)
		$STUDIES_PATH/generate_affiliation.py -o "$tmpsvg" ${combinations[$i]}
    export_svg "$tmpsvg" "${organizations[$i]}"
		rm "$tmpsvg"
  done
fi


# ] <-- needed because of Argbash
