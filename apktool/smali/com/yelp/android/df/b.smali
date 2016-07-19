.class public final Lcom/yelp/android/df/b;
.super Lrx/d;
.source "HandlerScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/df/b$a;
    }
.end annotation


# instance fields
.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lrx/d;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/yelp/android/df/b;->b:Landroid/os/Handler;

    .line 39
    return-void
.end method


# virtual methods
.method public a()Lrx/d$a;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/yelp/android/df/b$a;

    iget-object v1, p0, Lcom/yelp/android/df/b;->b:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/yelp/android/df/b$a;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
