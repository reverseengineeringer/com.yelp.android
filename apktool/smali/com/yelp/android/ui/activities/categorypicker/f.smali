.class public Lcom/yelp/android/ui/activities/categorypicker/f;
.super Ljava/lang/Object;
.source "CategoryPickerUtils.java"


# direct methods
.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f07020c

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    goto :goto_0
.end method
