.class public Lcom/yelp/android/services/PhotoShareFormatter;
.super Lcom/yelp/android/services/ShareFormatter;
.source "PhotoShareFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/services/ShareFormatter",
        "<",
        "Lcom/yelp/android/serializable/Photo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/services/PhotoShareFormatter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/yelp/android/services/PhotoShareFormatter$1;

    invoke-direct {v0}, Lcom/yelp/android/services/PhotoShareFormatter$1;-><init>()V

    sput-object v0, Lcom/yelp/android/services/PhotoShareFormatter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/Photo;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/yelp/android/services/ShareFormatter;-><init>(Landroid/os/Parcelable;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/yelp/android/services/PhotoShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f0701b7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/services/e$a;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/services/ShareFormatter;->a(Landroid/content/Context;Lcom/yelp/android/services/e$a;Landroid/content/Intent;)V

    .line 44
    invoke-virtual {p2}, Lcom/yelp/android/services/e$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string/jumbo v0, "android.intent.extra.SUBJECT"

    const v1, 0x7f0700e9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    :cond_0
    return-void
.end method

.method public b()Lcom/yelp/android/analytics/g$a;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/yelp/android/analytics/g$a;

    invoke-direct {v0}, Lcom/yelp/android/analytics/g$a;-><init>()V

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotoShare:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/g$a;->a(Lcom/yelp/android/analytics/iris/a;)Lcom/yelp/android/analytics/g$a;

    move-result-object v0

    return-object v0
.end method
