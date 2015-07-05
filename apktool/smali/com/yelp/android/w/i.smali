.class public Lcom/yelp/android/w/i;
.super Ljava/lang/Object;
.source "FileDescriptorUriLoader.java"

# interfaces
.implements Lcom/yelp/android/v/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/v/n",
        "<",
        "Landroid/net/Uri;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yelp/android/v/c;)Lcom/yelp/android/v/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/v/c;",
            ")",
            "Lcom/yelp/android/v/m",
            "<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/yelp/android/w/h;

    const-class v1, Lcom/yelp/android/v/e;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v1, v2}, Lcom/yelp/android/v/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/yelp/android/v/m;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/w/h;-><init>(Landroid/content/Context;Lcom/yelp/android/v/m;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
