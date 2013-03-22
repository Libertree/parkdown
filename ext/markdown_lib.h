#ifndef MARKDOWN_LIB_H
#define MARKDOWN_LIB_H

#include <stdlib.h>
#include <stdio.h>
#include <glib.h>

enum markdown_extensions {
    EXT_SMART            = 0x001,
    EXT_NOTES            = 0x002,
    EXT_FILTER_HTML      = 0x004,
    EXT_FILTER_STYLES    = 0x008,
    EXT_STRIKE           = 0x010,
    EXT_AUTOLINK         = 0x020,
    EXT_HARD_WRAP        = 0x040,
    EXT_NO_IMAGES        = 0x080,
    EXT_MEDIA            = 0x100
};

enum markdown_formats {
    HTML_FORMAT,
    LATEX_FORMAT,
    GROFF_MM_FORMAT,
    ODF_FORMAT
};

GString * markdown_to_g_string(char *text, int extensions, int output_format);
char * markdown_to_string(char *text, int extensions, int output_format);

/* vim: set ts=4 sw=4 : */
#endif

