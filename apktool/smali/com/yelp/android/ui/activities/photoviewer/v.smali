.class Lcom/yelp/android/ui/activities/photoviewer/v;
.super Ljava/lang/Object;
.source "PhotoChrome.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/v;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/v;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->a()V

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/v;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/ui/activities/photoviewer/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;

    .line 180
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/ac;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;->a()Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 182
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/v;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/ui/activities/photoviewer/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/v;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/serializable/Media;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ad;->b(Lcom/yelp/android/serializable/Media;)V

    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/v;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/ui/activities/photoviewer/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/v;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/serializable/Media;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ad;->a(Lcom/yelp/android/serializable/Media;)V

    goto :goto_0

    .line 188
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/v;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/ui/activities/photoviewer/ad;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/v;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/serializable/Media;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/ad;->a(Lcom/yelp/android/serializable/Photo;)V

    goto :goto_0

    .line 191
    :pswitch_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/v;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/ui/activities/photoviewer/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/v;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/serializable/Media;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ad;->c(Lcom/yelp/android/serializable/Media;)V

    goto :goto_0

    .line 194
    :pswitch_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/v;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/ui/activities/photoviewer/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/photoviewer/ad;->a()V

    goto :goto_0

    .line 197
    :pswitch_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/v;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/ui/activities/photoviewer/ad;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/v;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/serializable/Media;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/ad;->b(Lcom/yelp/android/serializable/Photo;)V

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
