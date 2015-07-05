.class public Lcom/yelp/android/w/d;
.super Lcom/yelp/android/v/o;
.source "FileDescriptorResourceLoader.java"

# interfaces
.implements Lcom/yelp/android/w/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/v/o",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lcom/yelp/android/w/c",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/v/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/v/m",
            "<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/v/o;-><init>(Landroid/content/Context;Lcom/yelp/android/v/m;)V

    .line 42
    return-void
.end method
