.class public Lcom/yelp/android/aa/f;
.super Ljava/lang/Object;
.source "ImageVideoModelLoader.java"

# interfaces
.implements Lcom/yelp/android/aa/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/aa/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/aa/l",
        "<TA;",
        "Lcom/yelp/android/aa/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/aa/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/aa/l",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yelp/android/aa/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/aa/l",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/aa/l;Lcom/yelp/android/aa/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/aa/l",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/yelp/android/aa/l",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "At least one of streamLoader and fileDescriptorLoader must be non null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/aa/f;->a:Lcom/yelp/android/aa/l;

    .line 32
    iput-object p2, p0, Lcom/yelp/android/aa/f;->b:Lcom/yelp/android/aa/l;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Lcom/yelp/android/w/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lcom/yelp/android/w/c",
            "<",
            "Lcom/yelp/android/aa/g;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/yelp/android/aa/f;->a:Lcom/yelp/android/aa/l;

    if-eqz v0, :cond_3

    .line 39
    iget-object v0, p0, Lcom/yelp/android/aa/f;->a:Lcom/yelp/android/aa/l;

    invoke-interface {v0, p1, p2, p3}, Lcom/yelp/android/aa/l;->a(Ljava/lang/Object;II)Lcom/yelp/android/w/c;

    move-result-object v0

    .line 42
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/aa/f;->b:Lcom/yelp/android/aa/l;

    if-eqz v2, :cond_2

    .line 43
    iget-object v2, p0, Lcom/yelp/android/aa/f;->b:Lcom/yelp/android/aa/l;

    invoke-interface {v2, p1, p2, p3}, Lcom/yelp/android/aa/l;->a(Ljava/lang/Object;II)Lcom/yelp/android/w/c;

    move-result-object v2

    .line 46
    :goto_1
    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    .line 47
    :cond_0
    new-instance v1, Lcom/yelp/android/aa/f$a;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/aa/f$a;-><init>(Lcom/yelp/android/w/c;Lcom/yelp/android/w/c;)V

    .line 49
    :cond_1
    return-object v1

    :cond_2
    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
