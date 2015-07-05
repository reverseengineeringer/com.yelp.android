.class public Lcom/yelp/android/w/a;
.super Lcom/yelp/android/v/b;
.source "FileDescriptorFileLoader.java"

# interfaces
.implements Lcom/yelp/android/w/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/v/b",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lcom/yelp/android/w/c",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/v/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/v/m",
            "<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/yelp/android/v/b;-><init>(Lcom/yelp/android/v/m;)V

    .line 43
    return-void
.end method
