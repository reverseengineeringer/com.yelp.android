.class Lcom/yelp/android/i/b;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/i/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/i/a;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yelp/android/i/b;->a:Lcom/yelp/android/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/i/b;->a:Lcom/yelp/android/i/a;

    invoke-virtual {v0}, Lcom/yelp/android/i/a;->j()V

    .line 69
    return-void
.end method
