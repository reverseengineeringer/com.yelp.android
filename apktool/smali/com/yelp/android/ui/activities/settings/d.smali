.class Lcom/yelp/android/ui/activities/settings/d;
.super Ljava/lang/Object;
.source "ChangeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/d;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 685
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/d;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/d;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Landroid/content/Context;)V

    .line 687
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/d;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a()V

    .line 688
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/d;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Z)Z

    .line 690
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/d;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    const v1, 0x7f0c0302

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/d;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 695
    :goto_0
    return-void

    .line 693
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UserLogoutCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    goto :goto_0
.end method
