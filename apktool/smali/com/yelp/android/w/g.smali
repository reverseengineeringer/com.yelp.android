.class public Lcom/yelp/android/w/g;
.super Ljava/lang/Object;
.source "FileDescriptorStringLoader.java"

# interfaces
.implements Lcom/yelp/android/v/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/v/n",
        "<",
        "Ljava/lang/String;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
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
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/yelp/android/w/f;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v1, v2}, Lcom/yelp/android/v/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/yelp/android/v/m;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/w/f;-><init>(Lcom/yelp/android/v/m;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
