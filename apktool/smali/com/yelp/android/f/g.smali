.class public Lcom/yelp/android/f/g;
.super Ljava/lang/Object;
.source "TextUtilsCompatJellybeanMr1.java"


# direct methods
.method public static a(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method
