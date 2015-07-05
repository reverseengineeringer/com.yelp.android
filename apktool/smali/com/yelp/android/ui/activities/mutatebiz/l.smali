.class Lcom/yelp/android/ui/activities/mutatebiz/l;
.super Ljava/lang/Object;
.source "ChangeBusinessAttributes.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/l;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 442
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 443
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/l;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c()Lcom/yelp/android/analytics/iris/b;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 444
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/l;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->finish()V

    .line 445
    return-void
.end method
