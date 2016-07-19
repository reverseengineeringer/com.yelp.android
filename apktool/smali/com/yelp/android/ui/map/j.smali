.class public Lcom/yelp/android/ui/map/j;
.super Lcom/yelp/android/ui/map/g;
.source "SequentialNumberedIconMaker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/serializable/f;",
        ">",
        "Lcom/yelp/android/ui/map/g",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/map/g;-><init>(Landroid/content/Context;)V

    .line 23
    iput p2, p0, Lcom/yelp/android/ui/map/j;->a:I

    .line 24
    return-void
.end method


# virtual methods
.method protected b(Lcom/yelp/android/serializable/f;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 27
    iget v0, p0, Lcom/yelp/android/ui/map/j;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/map/j;->a:I

    return v0
.end method
