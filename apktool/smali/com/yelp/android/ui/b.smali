.class Lcom/yelp/android/ui/b;
.super Lcom/yelp/android/ui/l;
.source "ActivityMonocle.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/ActivityMonocle;Landroid/hardware/SensorManager;)V
    .locals 0

    .prologue
    .line 1051
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/l;-><init>(Lcom/yelp/android/ui/ActivityMonocle;Landroid/hardware/SensorManager;)V

    .line 1052
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/yelp/android/ui/b;->a:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-virtual {v0}, Lcom/yelp/android/ui/ActivityMonocle;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1057
    packed-switch v0, :pswitch_data_0

    .line 1062
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1060
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1057
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
