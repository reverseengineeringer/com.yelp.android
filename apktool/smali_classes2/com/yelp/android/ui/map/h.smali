.class public abstract Lcom/yelp/android/ui/map/h;
.super Ljava/lang/Object;
.source "OnInfoWindowButtonTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Lcom/google/android/gms/maps/model/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/map/h;->a:Lcom/google/android/gms/maps/model/c;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/map/h;->a:Lcom/google/android/gms/maps/model/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/c;->c()V

    .line 61
    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/map/h;->a:Lcom/google/android/gms/maps/model/c;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/map/h;->a:Lcom/google/android/gms/maps/model/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/c;->c()V

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public a(Lcom/google/android/gms/maps/model/c;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/yelp/android/ui/map/h;->a:Lcom/google/android/gms/maps/model/c;

    .line 21
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 35
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 47
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/map/h;->b(Landroid/view/View;)V

    .line 53
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 37
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/map/h;->a(Landroid/view/View;)V

    goto :goto_1

    .line 40
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/map/h;->b(Landroid/view/View;)V

    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/map/h;->a()V

    goto :goto_1

    .line 44
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/map/h;->b(Landroid/view/View;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/map/h;->b(Landroid/view/View;)V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
