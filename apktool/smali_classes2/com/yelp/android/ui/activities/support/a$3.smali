.class Lcom/yelp/android/ui/activities/support/a$3;
.super Ljava/lang/Object;
.source "ShareSheetHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/support/a;->a(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

.field final synthetic b:Lcom/yelp/android/ui/activities/support/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/a;Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/a$3;->b:Lcom/yelp/android/ui/activities/support/a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/a$3;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/yelp/android/ui/activities/support/a$4;->a:[I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/a$3;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-virtual {v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/a$3;->b:Lcom/yelp/android/ui/activities/support/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/a;->b(Lcom/yelp/android/ui/activities/support/a;)Lcom/flipboard/bottomsheet/BottomSheetLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b()V

    .line 143
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/a$3;->b:Lcom/yelp/android/ui/activities/support/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/a;->b(Lcom/yelp/android/ui/activities/support/a;)Lcom/flipboard/bottomsheet/BottomSheetLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c()V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/a$3;->b:Lcom/yelp/android/ui/activities/support/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/a;->b(Lcom/yelp/android/ui/activities/support/a;)Lcom/flipboard/bottomsheet/BottomSheetLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a()V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
