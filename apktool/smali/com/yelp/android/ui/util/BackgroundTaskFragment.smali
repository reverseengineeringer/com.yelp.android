.class public abstract Lcom/yelp/android/ui/util/BackgroundTaskFragment;
.super Landroid/support/v4/app/Fragment;
.source "BackgroundTaskFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/mutatebiz/af;
.implements Lcom/yelp/android/ui/activities/mutatebiz/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        "ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/Fragment;",
        "Lcom/yelp/android/ui/activities/mutatebiz/af",
        "<TResultType;>;",
        "Lcom/yelp/android/ui/activities/mutatebiz/ag",
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

.field private b:Lcom/yelp/android/ui/util/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/g",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field private c:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "TResultType;>;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->c([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ":",
            "Lcom/yelp/android/ui/util/g",
            "<TResultType;>;>(TT;)V"
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p1

    check-cast v0, Lcom/yelp/android/ui/util/g;

    iput-object v0, p0, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->b:Lcom/yelp/android/ui/util/g;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 45
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->b:Lcom/yelp/android/ui/util/g;

    if-nez v0, :cond_0

    .line 68
    iput-object p1, p0, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->a:Ljava/lang/Object;

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->b:Lcom/yelp/android/ui/util/g;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/util/g;->a(Ljava/lang/Object;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->d:Z

    return v0
.end method

.method protected varargs abstract b([Ljava/lang/Void;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TResultType;"
        }
    .end annotation
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/ae;

    const/4 v1, 0x0

    new-array v2, v3, [Landroid/view/View;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ae;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ag;Lcom/yelp/android/ui/activities/mutatebiz/af;Landroid/view/View;[Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->c:Landroid/os/AsyncTask;

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->c:Landroid/os/AsyncTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    return-void
.end method

.method public varargs c([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TResultType;"
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->d:Z

    .line 60
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->b([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->d:Z

    .line 62
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->b:Lcom/yelp/android/ui/util/g;

    iget-object v1, p0, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/util/g;->a(Ljava/lang/Object;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->a:Ljava/lang/Object;

    .line 40
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->setRetainInstance(Z)V

    .line 31
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->b:Lcom/yelp/android/ui/util/g;

    .line 51
    return-void
.end method
