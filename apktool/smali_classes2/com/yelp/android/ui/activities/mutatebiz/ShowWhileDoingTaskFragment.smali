.class public abstract Lcom/yelp/android/ui/activities/mutatebiz/ShowWhileDoingTaskFragment;
.super Landroid/support/v4/app/Fragment;
.source "ShowWhileDoingTaskFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/mutatebiz/c$a;
.implements Lcom/yelp/android/ui/activities/mutatebiz/c$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        "ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/Fragment;",
        "Lcom/yelp/android/ui/activities/mutatebiz/c$a",
        "<TResultType;>;",
        "Lcom/yelp/android/ui/activities/mutatebiz/c$b",
        "<",
        "Ljava/lang/Void;",
        "TResultType;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultType;"
        }
    .end annotation
.end field

.field private b:Lcom/yelp/android/ui/util/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/d$a",
            "<TResultType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 29
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ShowWhileDoingTaskFragment;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ShowWhileDoingTaskFragment;->b:Lcom/yelp/android/ui/util/d$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ShowWhileDoingTaskFragment;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/util/d$a;->a(Ljava/lang/Object;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ShowWhileDoingTaskFragment;->a:Ljava/lang/Object;

    .line 33
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ShowWhileDoingTaskFragment;->setRetainInstance(Z)V

    .line 24
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ShowWhileDoingTaskFragment;->b:Lcom/yelp/android/ui/util/d$a;

    .line 44
    return-void
.end method
