.class Lcom/yelp/android/ui/activities/ActivityLogin$10;
.super Ljava/lang/Object;
.source "ActivityLogin.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityLogin;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityLogin$10;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$10;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Lcom/yelp/android/ui/activities/ActivityLogin;Z)Z

    .line 690
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$10;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->h(Lcom/yelp/android/ui/activities/ActivityLogin;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LogInUnmaskPasswordCheckboxClicked:Lcom/yelp/android/analytics/iris/EventIri;

    :goto_0
    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 694
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$10;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->i(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    .line 695
    return-void

    .line 690
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LogInMaskPasswordCheckboxClicked:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_0
.end method
