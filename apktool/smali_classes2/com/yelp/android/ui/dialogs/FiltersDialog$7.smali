.class Lcom/yelp/android/ui/dialogs/FiltersDialog$7;
.super Ljava/lang/Object;
.source "FiltersDialog.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/dialogs/FiltersDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/FiltersDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V
    .locals 0

    .prologue
    .line 956
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$7;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog$7;->a:Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-static {v0, p1, p2}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/ui/dialogs/FiltersDialog;Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;)V

    .line 961
    return-void
.end method
