.class Lcom/yelp/android/ui/activities/nearby/o;
.super Ljava/lang/Object;
.source "ComboMapListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/o;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

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
    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/o;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->b(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/q;->c()Z

    move-result v0

    return v0
.end method
