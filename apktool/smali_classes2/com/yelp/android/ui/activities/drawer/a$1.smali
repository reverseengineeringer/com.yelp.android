.class Lcom/yelp/android/ui/activities/drawer/a$1;
.super Ljava/lang/Object;
.source "DinoAnimationController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/drawer/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/drawer/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/drawer/a;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/yelp/android/ui/activities/drawer/a$1;->a:Lcom/yelp/android/ui/activities/drawer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method
