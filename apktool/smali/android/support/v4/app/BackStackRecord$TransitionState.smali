.class public Landroid/support/v4/app/BackStackRecord$TransitionState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"


# instance fields
.field public enteringEpicenterView:Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;

.field public hiddenFragmentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public nameOverrides:Lcom/yelp/android/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/e/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public nonExistentView:Landroid/view/View;

.field final synthetic this$0:Landroid/support/v4/app/BackStackRecord;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/BackStackRecord;)V
    .locals 1

    .prologue
    .line 1449
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord$TransitionState;->this$0:Landroid/support/v4/app/BackStackRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1450
    new-instance v0, Lcom/yelp/android/e/a;

    invoke-direct {v0}, Lcom/yelp/android/e/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Lcom/yelp/android/e/a;

    .line 1451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    .line 1453
    new-instance v0, Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord$TransitionState;->enteringEpicenterView:Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;

    return-void
.end method
