.class Lcom/yelp/android/f/e$e;
.super Lcom/yelp/android/f/e$d;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method private constructor <init>(Lcom/yelp/android/f/e$c;Z)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/yelp/android/f/e$d;-><init>(Lcom/yelp/android/f/e$c;)V

    .line 157
    iput-boolean p2, p0, Lcom/yelp/android/f/e$e;->a:Z

    .line 158
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/f/e$c;ZLcom/yelp/android/f/e$1;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/f/e$e;-><init>(Lcom/yelp/android/f/e$c;Z)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/yelp/android/f/e$e;->a:Z

    return v0
.end method
