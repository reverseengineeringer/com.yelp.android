.class Lcom/yelp/android/ui/activities/cm;
.super Ljava/lang/Object;
.source "ActivityLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityLogin;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/yelp/android/ui/activities/cm;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cm;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->d(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    .line 471
    return-void
.end method
