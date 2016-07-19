.class Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$2;
.super Ljava/lang/Object;
.source "AddBusiness.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/FlagsDialog$b;


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
    .line 263
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    invoke-virtual {p1}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->p:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->a(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;)V

    .line 268
    return-void
.end method
