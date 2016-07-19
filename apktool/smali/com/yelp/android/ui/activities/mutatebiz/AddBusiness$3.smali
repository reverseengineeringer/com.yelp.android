.class Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$3;
.super Ljava/lang/Object;
.source "AddBusiness.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/mutatebiz/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->disableLoading()V

    .line 285
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->a(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->disableLoading()V

    .line 276
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    iput-object p1, v0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->p:Ljava/lang/String;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$3;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->a(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;Ljava/lang/String;)V

    .line 280
    return-void
.end method
