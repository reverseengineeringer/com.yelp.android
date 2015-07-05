.class public Lcom/yelp/android/w/f;
.super Lcom/yelp/android/v/q;
.source "FileDescriptorStringLoader.java"

# interfaces
.implements Lcom/yelp/android/w/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/v/q",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lcom/yelp/android/w/c",
        "<",
        "Ljava/lang/String;",
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
    .line 40
    invoke-direct {p0, p1}, Lcom/yelp/android/v/q;-><init>(Lcom/yelp/android/v/m;)V

    .line 41
    return-void
.end method
