.class Lcom/yelp/android/m/d$1;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/m/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/m/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/m/d;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yelp/android/m/d$1;->a:Lcom/yelp/android/m/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/m/d$1;->a:Lcom/yelp/android/m/d;

    invoke-virtual {v0}, Lcom/yelp/android/m/d;->j()V

    .line 66
    return-void
.end method
