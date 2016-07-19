.class Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$1;
.super Ljava/lang/Object;
.source "ActivityMessageTheBusiness.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$1;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$1;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->a(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$1;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->a(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;Z)Z

    .line 316
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMessageTheBusinessWrite:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 317
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$1;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->b(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchRequestAQuoteWrite:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 321
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 304
    return-void
.end method
