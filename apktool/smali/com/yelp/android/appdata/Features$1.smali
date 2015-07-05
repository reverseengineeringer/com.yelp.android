.class final enum Lcom/yelp/android/appdata/Features$1;
.super Lcom/yelp/android/appdata/Features;
.source "Features.java"


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/appdata/Features;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/appdata/Features$1;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
