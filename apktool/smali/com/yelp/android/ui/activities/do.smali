.class Lcom/yelp/android/ui/activities/do;
.super Ljava/lang/Object;
.source "ActivityRecents.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityRecents;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityRecents;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/yelp/android/ui/activities/do;->a:Lcom/yelp/android/ui/activities/ActivityRecents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 197
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 198
    return-void
.end method
