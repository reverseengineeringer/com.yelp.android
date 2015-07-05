.class Lcom/yelp/android/ui/activities/mutatebiz/d;
.super Ljava/lang/Object;
.source "AddAddressFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/ar;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/d;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/dialogs/ap;)V
    .locals 3

    .prologue
    .line 629
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/d;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a:Z

    .line 630
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/d;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-virtual {p1}, Lcom/yelp/android/ui/dialogs/ap;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/ui/dialogs/ap;->a()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;Ljava/util/Locale;I)V

    .line 631
    return-void
.end method
