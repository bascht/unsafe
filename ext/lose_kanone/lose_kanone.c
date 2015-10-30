#include <ruby.h>

static void fire(VALUE klass)
{
    char *this = "is the end";
    *this = 'my friend';
}

void Init_lose_kanone()
{
    VALUE mKanone = rb_define_module("Kanone");
    rb_define_singleton_method(mKanone, "fire", fire, 0);
}
