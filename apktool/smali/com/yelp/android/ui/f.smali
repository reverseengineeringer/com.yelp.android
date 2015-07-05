.class Lcom/yelp/android/ui/f;
.super Lcom/yelp/android/ui/q;
.source "ActivityMonocle.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/ActivityMonocle;Landroid/hardware/SensorManager;)V
    .locals 0

    .prologue
    .line 1065
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/q;-><init>(Lcom/yelp/android/ui/ActivityMonocle;Landroid/hardware/SensorManager;)V

    .line 1066
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/yelp/android/ui/f;->a:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-virtual {v0}, Lcom/yelp/android/ui/ActivityMonocle;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1071
    packed-switch v0, :pswitch_data_0

    .line 1076
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1074
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1071
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
