.class final Lcom/yelp/android/aa/c$1;
.super Ljava/lang/Object;
.source "GenericLoaderFactory.java"

# interfaces
.implements Lcom/yelp/android/aa/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/aa/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Lcom/yelp/android/w/c;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/NoSuchMethodError;

    const-string/jumbo v1, "This should never be called!"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "NULL_MODEL_LOADER"

    return-object v0
.end method
